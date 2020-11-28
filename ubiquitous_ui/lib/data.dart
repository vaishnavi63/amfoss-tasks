import 'package:flutter/material.dart';


class SliderModel{

  String imageAssetPath;
  String title;
  String desc;

  SliderModel({this.imageAssetPath,this.title,this.desc});

  void setImageAssetPath(String getImageAssetPath){
    imageAssetPath = getImageAssetPath;
  }

  void setTitle(String getTitle){
    title = getTitle;
  }

  void setDesc(String getDesc){
    desc = getDesc;
  }

  String getImageAssetPath(){
    return imageAssetPath;
  }

  String getTitle(){
    return title;
  }

  String getDesc(){
    return desc;
  }

}


List<SliderModel> getSlides(){

  List<SliderModel> slides = new List<SliderModel>();
  SliderModel sliderModel = new SliderModel();

  //1
  sliderModel.setDesc("You own private cloud in just 0ne step away");
  sliderModel.setTitle("HELLO..!!");
  sliderModel.setImageAssetPath("assets/art-cloud 1.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //2
  sliderModel.setDesc(" Launch your next campaign within minutes with Cloud Campaign Monitor.");
  sliderModel.setTitle("Your Premium Cloud");
  sliderModel.setImageAssetPath("assets/art-work@3x.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  //3
  sliderModel.setDesc("Create Account and Launch Campaign");
  sliderModel.setTitle("And Finally...");
  sliderModel.setImageAssetPath("assets/art-stairs@3x.png");
  slides.add(sliderModel);

  sliderModel = new SliderModel();

  return slides;
}