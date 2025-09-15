import streamlit as st

st.title('사용자 입력 받기')

col1, _, col2 = st.columns(3)

with col1:
    nickname = st.text_input('닉네임 입력')
    age = st.number_input('나이 입력', min_value=13, max_value=100)

    options = ['한국', '중국', '일본']
    national = st.selectbox('국적', options=options)

    r_options = ['맙집탐방', '영화시청', '음악감상']
    hobby = st.radio('취미', options=r_options)

    is_checked = st.checkbox('개임정보 제공 동의')

with col2:
    if st.button('입력 완료'):
        st.write(f'닉네임: {nickname}')
        st.write(f'나이: {age}')
        st.write(f'국적: {national}')
        st.write(f'취미: {hobby}')
        st.write(f'동의: {is_checked}')