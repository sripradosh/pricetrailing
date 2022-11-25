"""price_trailing URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf.urls import url
from django.conf.urls.static import static
from buyer import views as buyerviews
from seller import views as sellerviews
from price_trailing import settings
urlpatterns = [
    path('admin/', admin.site.urls),
    url('^$',buyerviews.buyer_index, name="buyer_index"),
    url(r'^buyer_login/$',buyerviews.buyer_login,name="buyer_login"),
    url(r'^buyer_register/$',buyerviews.buyer_register,name="buyer_register"),
    url(r'^buyerhome/$',buyerviews.buyerhome,name="buyerhome"),
    url(r'^location/$',buyerviews.location,name="location"),
    url(r'^price/$',buyerviews.price,name="price"),
    url(r'^popularity/$',buyerviews.popularity,name="popularity"),
    url(r'^locationandprice/$',buyerviews.locationandprice,name="locationandprice"),
    url(r'^locationandpopularity/$',buyerviews.locationandpopularity,name="locationandpopularity"),
    url(r'^priceandpopularity/$',buyerviews.priceandpopularity,name="priceandpopularity"),
    url(r'^locandpriceandpopularity/$',buyerviews.locandpriceandpopularity,name="locandpriceandpopularity"),
    url(r'^payment/(?P<pk>\d+)/$',buyerviews.payment,name="payment"),
    url(r'^Property_finalreg/$',buyerviews.Property_finalreg,name="Property_finalreg"),
    url(r'^home_loan/$',buyerviews.home_loan,name="home_loan"),

    url(r'^seller_login/$',sellerviews.seller_login,name="seller_login"),
    url(r'^seller_register/$',sellerviews.seller_register,name="seller_register"),
    url(r'^seller_upload/$',sellerviews.seller_upload,name="seller_upload"),
    url(r'^price_calc/$',sellerviews.price_calc,name="price_calc"),
    url(r'^view_property/$',sellerviews.view_property,name="view_property"),
    url(r'^upload_proof/$',sellerviews.upload_proof,name="upload_proof"),
    url(r'^family_details/$',sellerviews.family_details,name="family_details"),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)