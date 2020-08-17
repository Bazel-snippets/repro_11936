#include <fstream>
#include <ios>
#include <iostream>

int main(int argc, char** argv) {
  if (argc != 2) {
    std::cerr << "usage: hello_generator output_file" << std::endl;
    return 1;
  }
  std::fstream out(argv[1], std::ios_base::out);
  out << "#include <iostream>" << std::endl;
  out << "int main(int argc, char** argv) {" << std::endl;
  out << "  std::cout << \"hello world\" << std::endl;" << std::endl;
  out << "  return 0;" << std::endl;
  out << "}" << std::endl;
  out.close();
  return 0;
}
