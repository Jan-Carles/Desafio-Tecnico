#include <iostream>
#include <iomanip>
using namespace std;

void tabela(){
	int opcao;
	float quantidade, total;
	cout << "1 - Cachorro quente R$4.00" << endl;
	cout << "2 - X-salada        R$4.50" << endl;
	cout << "3 - X-bacon         R$5.00" << endl;
	cout << "4 - Torrada simples R$2.00" << endl;
	cout << "5 - Refrigerante    R$4.00" << endl;
	cout << "Escolha uma das opcoes acima e sua quantidde: ";	
	cin >> opcao >> quantidade;
	switch(opcao){
		case 1:
			total = quantidade*4;
			break;
		case 2:
			total = quantidade*4.5;
			break;
		case 3:
			total = quantidade*5;
			break;
		case 4:
			total = quantidade*2;
			break;
		case 5:
			total = quantidade*1.5;
			break;
		default:
			cout << "Opcao invalida!";
	}
	cout << fixed << setprecision(2);
	cout << "Total: R$ " << total;
}

int main(){
	
	tabela();
	
	return 0;
}
