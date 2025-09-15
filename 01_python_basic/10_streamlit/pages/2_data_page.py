import streamlit as st
import pandas as pd


st.title('인지도')

data = pd.DataFrame({
    "캐릭터": ["전사", "법사", "탱커"],
    "선택횟수": [100, 20, 34],
    "인지도": [25, 47, 56]
})

st.dataframe(data=data)

st.bar_chart(data.set_index('캐릭터')['선택횟수'])
st.line_chart(data.set_index('캐릭터')['인지도'])

fig = data.plot.pie(
    y='인지도',
    labels=data['캐릭터'],
    autopct='%1.1f%%',
    figsize=(6, 6),
    legend=False
).get_figure()
st.pyplot(fig)