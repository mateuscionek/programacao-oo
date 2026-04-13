import 'agenda.dart';
import 'contato.dart';

void main() {
  Agenda agenda1 = Agenda.vazia();
  agenda1.adicionarContato(Contato('Mateus', '1111-1111'));
  agenda1.adicionarContato(Contato('Renata', '2222-2222'));

  print(' Agenda 1');
  agenda1.listarContatos();

  agenda1.removerContatoPorNome('Ana');
  print(' Agenda 1 atualizada');
  agenda1.listarContatos();

  Agenda agenda2 = Agenda.comContatos([
    Contato('jose', '3333-3333'),
    Contato('Beti', '4444-4444'),
  ]);

  print('Agenda 2');
  agenda2.listarContatos();
}
//a pq p2=p1 entao os dois apontam para o mesmo objeto
//b sim, Em dart objetos são passados por referência, então duas variáveis podem apontar para o mesmo objeto