from django.db import models


class Grades (models.Model):
    grade = models.CharField(max_length=2)
    grade_point = models.FloatField()
    grade_description = models.CharField(max_length=100)

    def __str__(self):
        return self.grade
