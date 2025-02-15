namespace Sistema_facturacion
{
    partial class Form1
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtEfectivo = new System.Windows.Forms.ComboBox();
            this.btnEliminar = new System.Windows.Forms.Button();
            this.btnAgregar = new System.Windows.Forms.Button();
            this.cmbProducto = new System.Windows.Forms.ComboBox();
            this.txtCantidad = new System.Windows.Forms.ComboBox();
            this.lblCodigo = new System.Windows.Forms.Label();
            this.lblProducto = new System.Windows.Forms.Label();
            this.txtPrecio = new System.Windows.Forms.Label();
            this.txtNombre = new System.Windows.Forms.Label();
            this.txtTotalPagar1 = new System.Windows.Forms.Label();
            this.lblPrecio = new System.Windows.Forms.Label();
            this.lblNombre = new System.Windows.Forms.Label();
            this.lblDevolucion = new System.Windows.Forms.Label();
            this.cmbCantidad = new System.Windows.Forms.Label();
            this.txtDevolucion = new System.Windows.Forms.Label();
            this.lblTotalPagar = new System.Windows.Forms.Label();
            this.txtEfectivo1 = new System.Windows.Forms.Label();
            this.txtCodigo = new System.Windows.Forms.Label();
            this.dgLista = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label14 = new System.Windows.Forms.Label();
            this.btnVender = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgLista)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.panel1.Controls.Add(this.txtEfectivo);
            this.panel1.Controls.Add(this.btnEliminar);
            this.panel1.Controls.Add(this.btnAgregar);
            this.panel1.Controls.Add(this.cmbProducto);
            this.panel1.Controls.Add(this.txtCantidad);
            this.panel1.Controls.Add(this.lblCodigo);
            this.panel1.Controls.Add(this.lblProducto);
            this.panel1.Controls.Add(this.txtPrecio);
            this.panel1.Controls.Add(this.txtNombre);
            this.panel1.Controls.Add(this.txtTotalPagar1);
            this.panel1.Controls.Add(this.lblPrecio);
            this.panel1.Controls.Add(this.lblNombre);
            this.panel1.Controls.Add(this.lblDevolucion);
            this.panel1.Controls.Add(this.cmbCantidad);
            this.panel1.Controls.Add(this.txtDevolucion);
            this.panel1.Controls.Add(this.lblTotalPagar);
            this.panel1.Controls.Add(this.txtEfectivo1);
            this.panel1.Controls.Add(this.txtCodigo);
            this.panel1.Controls.Add(this.dgLista);
            this.panel1.Location = new System.Drawing.Point(12, 53);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(395, 410);
            this.panel1.TabIndex = 0;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // txtEfectivo
            // 
            this.txtEfectivo.FormattingEnabled = true;
            this.txtEfectivo.Location = new System.Drawing.Point(137, 351);
            this.txtEfectivo.Name = "txtEfectivo";
            this.txtEfectivo.Size = new System.Drawing.Size(121, 21);
            this.txtEfectivo.TabIndex = 6;
            this.txtEfectivo.TextChanged += new System.EventHandler(this.txtEfectivo_TextChanged);
            // 
            // btnEliminar
            // 
            this.btnEliminar.Location = new System.Drawing.Point(272, 97);
            this.btnEliminar.Name = "btnEliminar";
            this.btnEliminar.Size = new System.Drawing.Size(92, 53);
            this.btnEliminar.TabIndex = 14;
            this.btnEliminar.Text = "ELIMINAR";
            this.btnEliminar.UseVisualStyleBackColor = true;
            this.btnEliminar.Click += new System.EventHandler(this.btnEliminar_Click);
            // 
            // btnAgregar
            // 
            this.btnAgregar.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAgregar.Location = new System.Drawing.Point(271, 23);
            this.btnAgregar.Name = "btnAgregar";
            this.btnAgregar.Size = new System.Drawing.Size(93, 55);
            this.btnAgregar.TabIndex = 13;
            this.btnAgregar.Text = "AGREGAR";
            this.btnAgregar.UseVisualStyleBackColor = true;
            this.btnAgregar.Click += new System.EventHandler(this.btnAgregar_Click);
            // 
            // cmbProducto
            // 
            this.cmbProducto.FormattingEnabled = true;
            this.cmbProducto.Items.AddRange(new object[] {
            "Energizante vive 100",
            "yogus",
            "Alpinette",
            "Cuajada",
            "Yogur Griego",
            "Pitahaya",
            "Guineo",
            "Zanahoria",
            "Sandia",
            "Carne Molida",
            "Campollo Moliexpress",
            "Carne Hamburguesa",
            "Chile con carne",
            "Lady Speed stick",
            "Acondicionador",
            "Limpiador",
            "Listerine"});
            this.cmbProducto.Location = new System.Drawing.Point(114, 20);
            this.cmbProducto.Name = "cmbProducto";
            this.cmbProducto.Size = new System.Drawing.Size(126, 21);
            this.cmbProducto.TabIndex = 5;
            this.cmbProducto.SelectedIndexChanged += new System.EventHandler(this.comboBox2_SelectedIndexChanged);
            // 
            // txtCantidad
            // 
            this.txtCantidad.FormattingEnabled = true;
            this.txtCantidad.Location = new System.Drawing.Point(114, 129);
            this.txtCantidad.Name = "txtCantidad";
            this.txtCantidad.Size = new System.Drawing.Size(108, 21);
            this.txtCantidad.TabIndex = 4;
            // 
            // lblCodigo
            // 
            this.lblCodigo.AutoSize = true;
            this.lblCodigo.Location = new System.Drawing.Point(116, 52);
            this.lblCodigo.Name = "lblCodigo";
            this.lblCodigo.Size = new System.Drawing.Size(10, 13);
            this.lblCodigo.TabIndex = 12;
            this.lblCodigo.Text = "-";
            // 
            // lblProducto
            // 
            this.lblProducto.AutoSize = true;
            this.lblProducto.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblProducto.ForeColor = System.Drawing.SystemColors.ControlText;
            this.lblProducto.Location = new System.Drawing.Point(32, 23);
            this.lblProducto.Name = "lblProducto";
            this.lblProducto.Size = new System.Drawing.Size(76, 13);
            this.lblProducto.TabIndex = 11;
            this.lblProducto.Text = "PRODUCTO";
            // 
            // txtPrecio
            // 
            this.txtPrecio.AutoSize = true;
            this.txtPrecio.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPrecio.Location = new System.Drawing.Point(32, 110);
            this.txtPrecio.Name = "txtPrecio";
            this.txtPrecio.Size = new System.Drawing.Size(53, 13);
            this.txtPrecio.TabIndex = 10;
            this.txtPrecio.Text = "PRECIO";
            // 
            // txtNombre
            // 
            this.txtNombre.AutoSize = true;
            this.txtNombre.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNombre.Location = new System.Drawing.Point(32, 82);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(60, 13);
            this.txtNombre.TabIndex = 9;
            this.txtNombre.Text = "NOMBRE";
            // 
            // txtTotalPagar1
            // 
            this.txtTotalPagar1.AutoSize = true;
            this.txtTotalPagar1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTotalPagar1.Location = new System.Drawing.Point(38, 318);
            this.txtTotalPagar1.Name = "txtTotalPagar1";
            this.txtTotalPagar1.Size = new System.Drawing.Size(109, 13);
            this.txtTotalPagar1.TabIndex = 8;
            this.txtTotalPagar1.Text = "TOTAL A PAGAR:";
            // 
            // lblPrecio
            // 
            this.lblPrecio.AutoSize = true;
            this.lblPrecio.Location = new System.Drawing.Point(116, 110);
            this.lblPrecio.Name = "lblPrecio";
            this.lblPrecio.Size = new System.Drawing.Size(10, 13);
            this.lblPrecio.TabIndex = 7;
            this.lblPrecio.Text = "-";
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.Location = new System.Drawing.Point(116, 82);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(10, 13);
            this.lblNombre.TabIndex = 2;
            this.lblNombre.Text = "-";
            // 
            // lblDevolucion
            // 
            this.lblDevolucion.AutoSize = true;
            this.lblDevolucion.Location = new System.Drawing.Point(306, 351);
            this.lblDevolucion.Name = "lblDevolucion";
            this.lblDevolucion.Size = new System.Drawing.Size(10, 13);
            this.lblDevolucion.TabIndex = 6;
            this.lblDevolucion.Text = "-";
            // 
            // cmbCantidad
            // 
            this.cmbCantidad.AutoSize = true;
            this.cmbCantidad.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbCantidad.Location = new System.Drawing.Point(32, 137);
            this.cmbCantidad.Name = "cmbCantidad";
            this.cmbCantidad.Size = new System.Drawing.Size(70, 13);
            this.cmbCantidad.TabIndex = 5;
            this.cmbCantidad.Text = "CANTIDAD";
            // 
            // txtDevolucion
            // 
            this.txtDevolucion.AutoSize = true;
            this.txtDevolucion.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDevolucion.Location = new System.Drawing.Point(278, 318);
            this.txtDevolucion.Name = "txtDevolucion";
            this.txtDevolucion.Size = new System.Drawing.Size(91, 13);
            this.txtDevolucion.TabIndex = 4;
            this.txtDevolucion.Text = "DEVOLUCION:";
            // 
            // lblTotalPagar
            // 
            this.lblTotalPagar.AutoSize = true;
            this.lblTotalPagar.Location = new System.Drawing.Point(58, 351);
            this.lblTotalPagar.Name = "lblTotalPagar";
            this.lblTotalPagar.Size = new System.Drawing.Size(10, 13);
            this.lblTotalPagar.TabIndex = 3;
            this.lblTotalPagar.Text = "-";
            // 
            // txtEfectivo1
            // 
            this.txtEfectivo1.AutoSize = true;
            this.txtEfectivo1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtEfectivo1.Location = new System.Drawing.Point(163, 318);
            this.txtEfectivo1.Name = "txtEfectivo1";
            this.txtEfectivo1.Size = new System.Drawing.Size(71, 13);
            this.txtEfectivo1.TabIndex = 2;
            this.txtEfectivo1.Text = "EFECTIVO:";
            // 
            // txtCodigo
            // 
            this.txtCodigo.AutoSize = true;
            this.txtCodigo.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtCodigo.Location = new System.Drawing.Point(32, 52);
            this.txtCodigo.Name = "txtCodigo";
            this.txtCodigo.Size = new System.Drawing.Size(55, 13);
            this.txtCodigo.TabIndex = 1;
            this.txtCodigo.Text = "CODIGO";
            // 
            // dgLista
            // 
            this.dgLista.AllowUserToAddRows = false;
            this.dgLista.AllowUserToDeleteRows = false;
            this.dgLista.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgLista.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgLista.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4,
            this.Column5});
            this.dgLista.Location = new System.Drawing.Point(18, 193);
            this.dgLista.Name = "dgLista";
            this.dgLista.ReadOnly = true;
            this.dgLista.RowHeadersVisible = false;
            this.dgLista.Size = new System.Drawing.Size(363, 105);
            this.dgLista.TabIndex = 0;
            // 
            // Column1
            // 
            this.Column1.HeaderText = "CODIGO";
            this.Column1.Name = "Column1";
            this.Column1.ReadOnly = true;
            // 
            // Column2
            // 
            this.Column2.HeaderText = "PRODUCTO";
            this.Column2.Name = "Column2";
            this.Column2.ReadOnly = true;
            // 
            // Column3
            // 
            this.Column3.HeaderText = "PRECIO";
            this.Column3.Name = "Column3";
            this.Column3.ReadOnly = true;
            // 
            // Column4
            // 
            this.Column4.HeaderText = "CANTIDAD";
            this.Column4.Name = "Column4";
            this.Column4.ReadOnly = true;
            // 
            // Column5
            // 
            this.Column5.HeaderText = "TOTAL";
            this.Column5.Name = "Column5";
            this.Column5.ReadOnly = true;
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.Location = new System.Drawing.Point(68, 9);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(284, 25);
            this.label14.TabIndex = 3;
            this.label14.Text = "TIENDA CUATRO ESQUINAS";
            // 
            // btnVender
            // 
            this.btnVender.Location = new System.Drawing.Point(149, 488);
            this.btnVender.Name = "btnVender";
            this.btnVender.Size = new System.Drawing.Size(99, 29);
            this.btnVender.TabIndex = 7;
            this.btnVender.Text = "VENDER";
            this.btnVender.UseVisualStyleBackColor = true;
            this.btnVender.Click += new System.EventHandler(this.btnVender_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.ClientSize = new System.Drawing.Size(419, 538);
            this.Controls.Add(this.btnVender);
            this.Controls.Add(this.label14);
            this.Controls.Add(this.panel1);
            this.Name = "Form1";
            this.Text = "Form1";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgLista)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label lblCodigo;
        private System.Windows.Forms.Label lblProducto;
        private System.Windows.Forms.Label txtPrecio;
        private System.Windows.Forms.Label txtNombre;
        private System.Windows.Forms.Label txtTotalPagar1;
        private System.Windows.Forms.Label lblPrecio;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.Label lblDevolucion;
        private System.Windows.Forms.Label cmbCantidad;
        private System.Windows.Forms.Label txtDevolucion;
        private System.Windows.Forms.Label lblTotalPagar;
        private System.Windows.Forms.Label txtEfectivo1;
        private System.Windows.Forms.Label txtCodigo;
        private System.Windows.Forms.DataGridView dgLista;
        private System.Windows.Forms.ComboBox txtCantidad;
        private System.Windows.Forms.ComboBox cmbProducto;
        private System.Windows.Forms.ComboBox txtEfectivo;
        private System.Windows.Forms.Button btnVender;
        private System.Windows.Forms.Button btnEliminar;
        private System.Windows.Forms.Button btnAgregar;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column5;
        public System.Windows.Forms.Label label14;
    }
}

