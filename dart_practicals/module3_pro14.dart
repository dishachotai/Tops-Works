import 'dart:io';

void main() {
  int rows = 2, cols = 2; 
  List<List<int>> matrix = [];

  print("Enter elements of matrix:");

  // input
  for (int i = 0; i < rows; i++) 
  {
    List<int> row = [];// Temporary list for each row

    for (int j = 0; j < cols; j++) 
    {
      row.add(int.parse(stdin.readLineSync()!));// Add element
    }
    matrix.add(row);
  }

  int max = matrix[0][0]; // Assume first element is maximum

  // find max
  for (int i = 0; i < rows; i++) 
  {
    for (int j = 0; j < cols; j++) 
    {
      if (matrix[i][j] > max) // Compare each element
      {
        max = matrix[i][j]; // update max
      }
    }
  }
  print("Maximum element = $max");
}