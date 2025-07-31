from django.shortcuts import render
from datetime import datetime

# Create your views here.

def home(request):
    return render(request, 'myapp/home.html',{'current_year': datetime.now().year})