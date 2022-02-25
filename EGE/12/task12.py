st = '1'*101
while st.find('1111')>=0:
    st = st.replace('1111','22',1)
    st = st.replace('222','1',1)
print(st)