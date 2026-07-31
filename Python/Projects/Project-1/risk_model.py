import streamlit as st
import pandas as pd
import joblib
model =joblib.load('C:/Users/asus/OneDrive/ドキュメント/Tutedude/Data Analytics/Python/Projects/Project-1/risk_model.joblib')
st.title("Healthcare Risk Stratisfication App")
 
age =st.number_input("Age",min_value=0)
length_of_stay = st.number_input("Lenght Of Stay (days)",min_value=0)
treatment_cost = st.number_input("Treatment Cost",min_value=0.0)

if st.button("Predict"):
    input_data =  pd.DataFrame([[age,length_of_stay,treatment_cost]], columns=['Age','Length of stay','TreatmentCost'])
    prediction = model.predict(input_data)[0]
    probability = model.predict_proba(input_data)[0][1]
    st.write(f"Risk Prediction: {'Very High' if prediction==1 else 'Normal'}")
    st.write(f"Risk Probability: {round(probability,2)}")