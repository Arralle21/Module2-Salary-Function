# Task 6: Unzip and Display Data with R

# Unzip the folder
unzip("Employee Profile.zip", exdir = "Extracted_Employee_Profile")

# Read the CSV file
# This assumes there's only one CSV file in the extracted directory
csv_files <- list.files("Extracted_Employee_Profile", pattern = "*.csv", full.names = TRUE)
employee_data <- read.csv(csv_files[1])

# Display the data
print(employee_data)

# Display in a more readable format
cat("\nEmployee Profile:\n")
for(i in 1:nrow(employee_data)) {
  cat(paste(employee_data$Field[i], ": ", employee_data$Value[i], "\n", sep=""))
}
