BMI_cal<-function(weight,var1,height,var2) {
    weight<-as.numeric(weight)
    height<-as.numeric(height)
    if (var1=="pounds") weight<-weight*0.453592
    if (var2=="inches") height<-height*0.0254
    else if (var2=="feet") height<-height*0.3048
    weight/height^2    
}
    