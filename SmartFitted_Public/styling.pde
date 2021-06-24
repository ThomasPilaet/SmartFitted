// set the style for the font
void setTextfieldStyle(controlP5.Textfield tf, ControlFont cf, String txt) {
  tf.getCaptionLabel()
    .setFont(cf)
    .toUpperCase(false)
    .setText(txt);
  tf.getCaptionLabel().getStyle().marginTop = -55;
}

void setButtonStyle(controlP5.Button btn, ControlFont cf, String label) {
  btn.getCaptionLabel()
    .setFont(cf)
    .setSize(14)
    .toUpperCase(false)
    .setText(label);
}

void setSliderStyle(controlP5.Slider sldr, ControlFont cf, String label) {
  sldr.getCaptionLabel()
    .setFont(cf)
    .setSize(14)
    .toUpperCase(false)
    .setText(label);
}
