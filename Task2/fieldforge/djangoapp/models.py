from django.contrib.gis.db import models
from django.contrib.auth.models import AbstractUser
from django.utils.translation import gettext_lazy as _
from django.utils import timezone
import uuid
import pytz


# Create your models here.
class User(AbstractUser):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    is_banned = models.BooleanField(default=False)


class Administrator(User):
    contact_email = models.EmailField(max_length=255)


class Instructor(User):
    experience = models.CharField(max_length=255)
    specialization = models.CharField(max_length=255)


class Soldier(User):
    unit = models.CharField(max_length=255)
    specialization = models.CharField(max_length=255)


class Training(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    instructor = models.ForeignKey(Instructor, on_delete=models.PROTECT)
    description = models.CharField(max_length=10000, blank=True)
    start_time = models.DateTimeField(blank=True, null=True)
    end_time = models.DateTimeField(blank=True, null=True)

    class TrainingTypes(models.TextChoices):
        ASSAULT = 'Assault', _('Assault')
        SCOUT = 'Scouting', _('Scouting')
        DEMINING = 'Demining', _('Demining')
        MIXED = 'Mixed>', _('Mixed')

    type = models.CharField(
        max_length=8,
        choices=TrainingTypes.choices,
        default=TrainingTypes.MIXED
    )
    soldiers = models.ManyToManyField(Soldier)


class Results(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    training = models.OneToOneField(Training, on_delete=models.CASCADE)
    mines_activated = models.IntegerField(default=0)
    mines_passed = models.IntegerField(default=0)
    mines_defused = models.IntegerField(default=0)
    soldiers_lost = models.IntegerField(default=0)
    time_spent = models.DurationField()


class Task(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    training = models.ForeignKey(Training, on_delete=models.CASCADE)


    class TaskTypes(models.TextChoices):
        ASSAULT = 'Assault', _('Assault')
        SCOUT = 'Scouting', _('Scouting')
        DEMINING = 'Demining', _('Demining')

    type = models.CharField(
        max_length=8,
        choices=TaskTypes.choices,
        default=TaskTypes.DEMINING
    )
    description = models.CharField(max_length=10000, blank=True)
    is_completed = models.BooleanField(default=False)


class Settings(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    user = models.OneToOneField(User, on_delete=models.CASCADE)

    TIMEZONES = tuple(zip(pytz.all_timezones, pytz.all_timezones))

    time_zone = models.CharField(max_length=32, choices=TIMEZONES,
                                 default='UTC')

    class Language(models.TextChoices):
        ENGLISH = 'EN', _('English')
        UKRAINIAN = 'UA', _('Ukrainian')

    language = models.CharField(
        max_length=2,
        choices=Language.choices,
        default=Language.ENGLISH
    )

    class MeasurementUnits(models.TextChoices):
        METRIC = 'MT', _('Metric')
        IMPERIAL = 'IM', _('Imperial')

    measurement_units = models.CharField(
        max_length=2,
        choices=MeasurementUnits.choices,
        default=MeasurementUnits.METRIC,
    )



class Mine(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    class MineTypes(models.TextChoices):
        TRIPWIRE = 'TW', _('Tripwire mine')
        ANTIPERSONNEL = 'AP', _('Anti-personnel mine')

    type = models.CharField(
        max_length=2,
        choices=MineTypes.choices,
        default=MineTypes.ANTIPERSONNEL,
    )

    range = models.IntegerField(blank=True, null=True)
    is_activated = models.BooleanField(default=False)
    is_defused = models.BooleanField(default=False)


class Map(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    training = models.OneToOneField(Training, on_delete=models.CASCADE)
    mines = models.ManyToManyField(Mine, through='MapsMines')
    description = models.CharField(max_length=10000, blank=True)
    start_point = models.PointField(default='POINT(0 0)')
    end_point = models.PointField(null=True, blank=True)


class MapsMines(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    map = models.ForeignKey(Map, on_delete=models.CASCADE)
    mine = models.ForeignKey(Mine, on_delete=models.CASCADE)
    location = models.PointField()
