using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace Sistema_facturacion
{
    public partial class Form1 : Form
    {
        private object dgvLista;

        public Form1()
        {
            InitializeComponent();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            int cod;
            string nom;
            float precio;

            cod = cmbProducto.SelectedIndex;
            nom = cmbProducto.SelectedItem.ToString();
            precio = cmbProducto.SelectedIndex;

            switch (cod)
            {
                case 0: lblCodigo.Text = "0000"; break;
                case 1: lblCodigo.Text = "0001"; break;
                case 2: lblCodigo.Text = "0002"; break;
                case 3: lblCodigo.Text = "0003"; break;
                case 4: lblCodigo.Text = "0004"; break;
                case 5: lblCodigo.Text = "0005"; break;
                case 6: lblCodigo.Text = "0006"; break;
                case 7: lblCodigo.Text = "0007"; break;
                case 8: lblCodigo.Text = "0008"; break;
                case 9: lblCodigo.Text = "0009"; break;
                case 10: lblCodigo.Text = "0010"; break;
                case 11: lblCodigo.Text = "0011"; break;
                case 12: lblCodigo.Text = "0012"; break;
                case 13: lblCodigo.Text = "0013"; break;
                case 14: lblCodigo.Text = "0014"; break;
                case 15: lblCodigo.Text = "0015"; break;
                case 16: lblCodigo.Text = "0016"; break;
                case 17: lblCodigo.Text = "0017"; break;
                case 18: lblCodigo.Text = "0018"; break;
                case 19: lblCodigo.Text = "0019"; break;
                default: lblCodigo.Text = "0020"; break;
            }

            switch (nom)
            {
                case "Energizante vive 100": lblNombre.Text = "Energizante vive 100"; break;
                case "yogus": lblNombre.Text = "yogus"; break;
                case "Alpinette": lblNombre.Text = "Alpinette"; break;
                case "Cuajada": lblNombre.Text = "Cuajada"; break;
                case "Yogur Griego": lblNombre.Text = "Yogur Griego"; break;
                case "Pitahaya": lblNombre.Text = "Pitahaya"; break;
                case "Guineo": lblNombre.Text = "Guineo"; break;
                case "Zanahoria": lblNombre.Text = "Zanahoria"; break;
                case "Sandia": lblNombre.Text = "Sandia"; break;
                case "Carne Molida": lblNombre.Text = "Carne Molida"; break;
                case "Campollo Moliexpress": lblNombre.Text = "Campollo Moliexpress"; break;
                case "Carne Hamburguesa": lblNombre.Text = "Carne Hamburguesa"; break;
                case "Chile con carne": lblNombre.Text = "Chile con carne"; break;
                case "Lady Speed stick": lblNombre.Text = "Lady Speed stick"; break;
                case "Acondicionador": lblNombre.Text = "Acondicionador"; break;
                case "Limpiador": lblNombre.Text = "Limpiador"; break;
                case "Listerine": lblNombre.Text = "Listerine"; break;
                case "Del Valle": lblNombre.Text = "Del Valle"; break;
                case "Pony Malta": lblNombre.Text = "Pony Malta"; break;
                default: lblNombre.Text = "suntea"; break;
            }

            switch (precio)
            {
                case 0: lblPrecio.Text = "2430"; break;
                case 1: lblPrecio.Text = "14530"; break;
                case 2: lblPrecio.Text = "3760"; break;
                case 3: lblPrecio.Text = "11640"; break;
                case 4: lblPrecio.Text = "2900"; break;
                case 5: lblPrecio.Text = "23340"; break;
                case 6: lblPrecio.Text = "3540"; break;
                case 7: lblPrecio.Text = "2240"; break;
                case 8: lblPrecio.Text = "2980"; break;
                case 9: lblPrecio.Text = "2980"; break;
                case 10: lblPrecio.Text = "26388"; break;
                case 11: lblPrecio.Text = "5820"; break;
                case 12: lblPrecio.Text = "15970"; break;
                case 13: lblPrecio.Text = "8700"; break;
                case 14: lblPrecio.Text = "32550"; break;
                case 15: lblPrecio.Text = "21850"; break;
                case 16: lblPrecio.Text = "12450"; break;
                case 17: lblPrecio.Text = "29720"; break;
                case 18: lblPrecio.Text = "5450"; break;
                case 19: lblPrecio.Text = "3380"; break;
                default: lblPrecio.Text = "14320"; break;
            }
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            DataGridViewRow file = new DataGridViewRow();
            file.CreateCells(dgLista);

            file.Cells[0].Value = lblCodigo.Text;
            file.Cells[1].Value = lblNombre.Text;
            file.Cells[2].Value = lblPrecio.Text;
            file.Cells[3].Value = txtCantidad.Text;
            file.Cells[4].Value = (float.Parse(lblPrecio.Text) * float.Parse(txtCantidad.Text)).ToString();

            dgLista.Rows.Add(file);


            lblCodigo.Text = lblNombre.Text = lblPrecio.Text = txtCantidad.Text = "";

            obtenerTotal();
        }
        public void obtenerTotal()

        {
            float costot = 0;
            int contador = 0;

            contador = dgLista.RowCount;

            for (int i = 0; i < contador; i++)
            {
                costot += float.Parse(dgLista.Rows[i].Cells[4].Value.ToString());
            }
            lblTotalPagar.Text = costot.ToString();
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                DialogResult rppta = MessageBox.Show("¿Desea eliminar producto?",
                    "Eliminacion", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

                if (rppta == DialogResult.Yes)
                {
                    dgLista.Rows.Remove(dgLista.CurrentRow);
                }
            }
            catch { }
            obtenerTotal();
        }

        private void txtEfectivo_TextChanged(object sender, EventArgs e)
        {
            try
            {
                lblDevolucion.Text = (float.Parse(txtEfectivo.Text) - float.Parse(lblTotalPagar.Text)).ToString();
            }
            catch { }
        }

        private void btnVender_Click(object sender, EventArgs e)
        {
            clsFactura.CreaTicket Ticket1 = new clsFactura.CreaTicket();

            Ticket1.TextoCentro("TIENDA CUATRO ESQUINAS "); //imprime una linea de descripcion
            Ticket1.TextoCentro("**********************************");

            Ticket1.TextoIzquierda("Dirc: Crr 63 A cll 73 Sur - 58");
            Ticket1.TextoIzquierda("Tel:6666666 ");
            Ticket1.TextoIzquierda("Nit: xxxx");
            Ticket1.TextoIzquierda("");
            Ticket1.TextoCentro("Factura de Venta"); //imprime una linea de descripcion
            Ticket1.TextoIzquierda("No Fac: 0001 ");
            Ticket1.TextoIzquierda("Fecha:" + DateTime.Now.ToShortDateString() + " Hora:" + DateTime.Now.ToShortTimeString());
            Ticket1.TextoIzquierda("Le Atendio: Nataly Palacio");
            Ticket1.TextoIzquierda("");
            clsFactura.CreaTicket.LineasGuion();

            clsFactura.CreaTicket.EncabezadoVenta();
            clsFactura.CreaTicket.LineasGuion();
            foreach (DataGridViewRow r in dgLista.Rows)
            {
                // PROD                         //PrECIO                                  CANT                             TOTAL
                Ticket1.AgregaArticulo(r.Cells[1].Value.ToString(), double.Parse(r.Cells[2].Value.ToString()), int.Parse(r.Cells[3].Value.ToString()), double.Parse(r.Cells[4].Value.ToString())); //imprime una linea de descripcion
            }


            clsFactura.CreaTicket.LineasGuion();
            Ticket1.AgregaTotales("Sub-Total", double.Parse("000")); // imprime linea con Subtotal
            Ticket1.AgregaTotales("Menos Descuento", double.Parse("000")); // imprime linea con decuento total
            Ticket1.TextoIzquierda(" ");
            Ticket1.AgregaTotales("Total", double.Parse(lblTotalPagar.Text)); // imprime linea con total
            Ticket1.TextoIzquierda(" ");
            Ticket1.AgregaTotales("Efectivo Entregado:", double.Parse(txtEfectivo.Text));
            Ticket1.AgregaTotales("Efectivo Devuelto:", double.Parse(lblDevolucion.Text));


            // Ticket1.LineasTotales(); // imprime linea 

            Ticket1.TextoIzquierda(" ");
            Ticket1.TextoCentro("**********************************");
            Ticket1.TextoCentro("*     Gracias por preferirnos    *");

            Ticket1.TextoCentro("**********************************");
            Ticket1.TextoIzquierda(" ");
            string impresora = "Microsoft XPS Document Writer";
            Ticket1.ImprimirTiket(impresora);

            MessageBox.Show("Gracias por Preferirinos");

            this.Close();
        }
    }
}
