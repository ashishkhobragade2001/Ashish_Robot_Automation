import pandas as pd



def get_login_data(self, file_path, sheet_name="Sheet1"):
    df = pd.read_excel(file_path, sheet_name=sheet_name)
    return df.to_dict(orient="records")