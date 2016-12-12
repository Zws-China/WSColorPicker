# WSColorPicker
iOS颜色拾取器


# PhotoShoot
![image](https://github.com/Zws-China/.../blob/master/colorPicker.gif)


# How To Use

```ruby


WSColorImageView *ws = [[WSColorImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-100, 300, 200, 200)];
[self.view addSubview:ws];

ws.currentColorBlock = ^(UIColor *color){

    label.textColor = color;
    view.backgroundColor = color;

};



```