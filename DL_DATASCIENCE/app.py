import streamlit as st
import cv2
import numpy as np
import tensorflow as tf
from PIL import Image

# Load model
model = tf.keras.models.load_model("AppleTomato.keras")

# Class labels
classes = ["Apple","Tomato"]

st.title(" Tomato vs Apple Detection")
st.write("Live Detection using OpenCV and Streamlit")

# Sidebar
st.sidebar.header("Settings")

confidence_threshold = st.sidebar.slider(
    "Confidence Threshold",0.0,1.0,0.6
)

# Image preprocessing
def preprocess(img):

    img = cv2.resize(img,(100,100))
    img = img/255.0
    img = np.expand_dims(img,axis=0)

    return img

# Prediction function
def predict(img):

    processed = preprocess(img)

    prediction = model.predict(processed)

    prob = np.max(prediction)
    class_id = np.argmax(prediction)

    if prob < confidence_threshold:
        return "Tomato", prob

    return classes[class_id], prob


# Webcam
run = st.checkbox("Start Camera")

FRAME_WINDOW = st.image([])

camera = cv2.VideoCapture(0)

while run:

    ret, frame = camera.read()

    if not ret:
        st.write("Camera error")
        break

    frame = cv2.flip(frame,1)

    label, conf = predict(frame)

    text = f"{label} ({conf*100:.2f}%)"

    cv2.putText(frame,text,(20,40),
                cv2.FONT_HERSHEY_SIMPLEX,
                1,(0,255,0),2)

    FRAME_WINDOW.image(frame,channels="BGR")

camera.release()