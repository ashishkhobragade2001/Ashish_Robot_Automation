import pandas as pd



def get_login_data(self, sheet_name="Sheet1"):
    file_path = "C://HybridRobotFramework//TestData//login_data.xlsx"
    df = pd.read_excel(file_path, sheet_name=sheet_name)
    return df.to_dict(orient="records")