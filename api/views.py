from .models import Grades
from .serializer import GradesSerializer
from rest_framework import viewsets

class GradesView(viewsets.ModelViewSet):
    queryset = Grades.objects.all()
    serializer_class = GradesSerializer
