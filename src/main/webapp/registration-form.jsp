<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e6f3ff;
            display: flex;
            justify-content: center;
            padding: 20px;
        }

        .form-container {
            background-color: #cce5ff;
            padding: 20px;
            border-radius: 10px;
            width: 400px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="number"], select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        input[type="radio"], input[type="checkbox"] {
            margin-right: 10px;
        }

        .education-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        .education-table td {
            padding: 8px;
            border: 1px solid #000;
        }

        button {
            padding: 10px 20px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
<form action="registration-form" name="form-dk" method="GET">
    <div class="form-container">
        <div class="form-group">
            <label for="firstName">First Name (max 30 characters a-z & A-Z)</label>
            <input type="text" id="firstName" name="txtFName" maxlength="30">
        </div>
        <div class="form-group">
            <label for="lastName">Last Name (max 30 characters a-z & A-Z)</label>
            <input type="text" id="lastName" name="txtLName" maxlength="30">
        </div>
        <div class="form-group">
            <label for="lastName">Email</label>
            <input type="text" id="email" name="txtEmail" maxlength="30">
        </div>
        <div class="form-group">
            <label for="dateOfBirth">Date of Birth</label>
            <select name="month">
                <option value="Month">Month</option>
                <option value="1">January</option>
                <option value="2">February</option>
                <option value="3">March</option>
                <option value="4">April</option>
                <option value="5">May</option>
                <option value="6">June</option>
                <option value="7">July</option>
                <option value="8">August</option>
                <option value="9">September</option>
                <option value="10">October</option>
                <option value="11">November</option>
                <option value="12">December</option>
            </select>
            <select name="day">
                <option value="Day">Day</option>
                <% for (int i = 1; i <= 31; i++) { %>
                <option value="<%= String.format("%02d", i) %>"><%= i %></option>
                <% } %>
            </select>
            <select name="year">
                <option value="Year">Year</option>
                <% int currentYear = java.time.Year.now().getValue(); // Lấy năm hiện tại
                    for (int i = currentYear; i >= currentYear - 100; i--) { %>
                <option value="<%= i %>"><%= i %></option>
                <% } %>
            </select>
        </div>
<!--        <div class="form-group">-->
<!--            <label for="mobileNumber">Mobile Number (10 digit number)</label>-->
<!--            <input type="number" id="mobileNumber" name="mobileNumber" maxlength="10">-->
<!--        </div>-->
        <div class="form-group">
            <label>Gender</label>
            <input type="radio" id="male" name="gender" value="male">
            <label for="male">Male</label>
            <input type="radio" id="female" name="gender" value="female">
            <label for="female">Female</label>
        </div>
<!--        <div class="form-group">-->
<!--            <label for="address">Address</label>-->
<!--            <textarea id="address" name="address" rows="4" cols="50"></textarea>-->
<!--        </div>-->
<!--        <div class="form-group">-->
<!--            <label for="city">City (max 30 characters a-z & A-Z)</label>-->
<!--            <input type="text" id="city" name="city" maxlength="30">-->
<!--        </div>-->
<!--        <div class="form-group">-->
<!--            <label for="pinCode">Pin Code (6 digit number)</label>-->
<!--            <input type="number" id="pinCode" name="pinCode" maxlength="6">-->
<!--        </div>-->
<!--        <div class="form-group">-->
<!--            <label for="country">Country</label>-->
<!--            <input type="text" id="country" name="country" value="India" readonly>-->
<!--        </div>-->
<!--        <div class="form-group">-->
<!--            <label>Hobbies</label>-->
<!--            <input type="checkbox" id="drawing" name="hobbies" value="drawing">-->
<!--            <label for="drawing">Drawing</label>-->
<!--            <input type="checkbox" id="singing" name="hobbies" value="singing">-->
<!--            <label for="singing">Singing</label>-->
<!--            <input type="checkbox" id="dancing" name="hobbies" value="dancing">-->
<!--            <label for="dancing">Dancing</label>-->
<!--            <input type="checkbox" id="others" name="hobbies" value="others">-->
<!--            <label for="others">Others</label>-->
<!--            <input type="text" id="otherHobby" name="otherHobby" placeholder="Specify">-->
<!--        </div>-->
<!--        <div class="form-group">-->
<!--            <label>Education</label>-->
<!--            <table class="education-table">-->
<!--                <tr>-->
<!--                    <td>Exam</td>-->
<!--                    <td>Board</td>-->
<!--                    <td>Percentage</td>-->
<!--                    <td>Year of Passing</td>-->
<!--                </tr>-->
<!--                <tr>-->
<!--                    <td><input type="text" name="exam1" placeholder="e.g., Class 10"></td>-->
<!--                    <td><input type="text" name="board1"></td>-->
<!--                    <td><input type="number" name="percentage1" step="0.01" max="100"></td>-->
<!--                    <td><input type="number" name="year1"></td>-->
<!--                </tr>-->
<!--                <tr>-->
<!--                    <td><input type="text" name="exam2" placeholder="e.g., Class 12"></td>-->
<!--                    <td><input type="text" name="board2"></td>-->
<!--                    <td><input type="number" name="percentage2" step="0.01" max="100"></td>-->
<!--                    <td><input type="number" name="year2"></td>-->
<!--                </tr>-->
<!--                <tr>-->
<!--                    <td><input type="text" name="exam3" placeholder="e.g., Graduation"></td>-->
<!--                    <td><input type="text" name="board3"></td>-->
<!--                    <td><input type="number" name="percentage3" step="0.01" max="100"></td>-->
<!--                    <td><input type="number" name="year3"></td>-->
<!--                </tr>-->
<!--                <tr>-->
<!--                    <td><input type="text" name="exam4" placeholder="e.g., Masters"></td>-->
<!--                    <td><input type="text" name="board4"></td>-->
<!--                    <td><input type="number" name="percentage4" step="0.01" max="100"></td>-->
<!--                    <td><input type="number" name="year4"></td>-->
<!--                </tr>-->
<!--            </table>-->
<!--        </div>-->
<!--        <div class="form-group">-->
<!--            <label>Client applies for</label>-->
<!--            <input type="radio" id="bca" name="course" value="bca">-->
<!--            <label for="bca">BCA</label>-->
<!--            <input type="radio" id="bcom" name="course" value="bcom">-->
<!--            <label for="bcom">BCom</label>-->
<!--            <input type="radio" id="bsc" name="course" value="bsc">-->
<!--            <label for="bsc">BSc</label>-->
<!--        </div>-->
        <button type="submit">Submit</button>
        <button type="reset">Reset</button>
    </div>
</form>
</body>
</html>