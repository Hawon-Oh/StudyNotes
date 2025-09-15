import streamlit as st

st.title('dwad')

if 'customer_count' not in st.session_state:
    st.session_state.customer_count = 0

if st.button('손님 추가'):
    st.session_state.customer_count += 1

if st.button('손님 제거'):
    st.session_state.customer_count = 0

st.write(f'지금 온 손님 수: {st.session_state.customer_count}')
