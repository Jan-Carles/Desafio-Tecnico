#include <iostream>
#include <iomanip>
using namespace std;

int main(){
	int num_funcionario;
	float num_horas, saldo;
	
	cin >> num_funcionario;
	cin >> num_horas;
	cin >> saldo;
	cout << "NUMBER = " << num_funcionario << endl;
	cout << fixed << setprecision(2);
	cout << "SALARY =  U$ " << num_horas*saldo << endl;
	
	return 0;
}
