import streamlit as st




st.title('Streamlit 배우기')
on = st.toggle("Activate feature")

def on_off():
    global is_off
    is_off = not is_off

st.button(label='카메라 연결하기', on_click=on_off)
st.camera_input(label='', disabled=is_off)

file_name = st.text_input('저장될 파일명')
st.write(file_name + '.png')

#-------------------------------------------------------
if st.button(f'접속'):
    st.success('성공')