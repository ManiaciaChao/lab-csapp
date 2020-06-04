#include <iostream>

struct Node {
  int val = 0;
  Node* left = nullptr;
  Node* right = nullptr;
}

int fun7Ori(Node* node, int input) {
  if (node == nullptr) return -1;
  if (node->val <= input) {
    if (node->val == input) {
      a = 0;
    } else {
      a = fun7(node->right, input);
      return 2 * a + 1;
    }
  } else {
    a = fun7(node->right, input);
    return 2 * a;
  }
  return a;
}

int fun7(Node* node, int input) {
  if (node == nullptr) return -1;
  if (node->val == input)
    return 0;
  else if (node->val < input)
    return 2 * fun7(node->right, input) + 1;
  else if (node->val > input)
    return 2 * fun7(node->left, input);
}

int main() {
  int res = 0;
  for (int i = 0; i < 0xe; i++) {
    if (func4(i, 0, 0xe) == 3) {
      std::cout << i << "\n";
      break;
    }
  }
  return 0;
}