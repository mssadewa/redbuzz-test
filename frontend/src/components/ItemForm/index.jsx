const ItemForm = async () => {
  return (
    <div>
      <div className="nama-barang-group">
        <label>Nama Barang</label>
        <select>
          <option value="test">Test</option>
        </select>
      </div>
      <div className="harga-satuan-group">
        <label>Harga Satuan</label>
        <input type="number" disabled />
      </div>
      <div className="qty-group">
        <label>Qty</label>
        <input type="number" />
      </div>
      <div className="total-group">
        <label>Total</label>
        <input type="number" disabled />
      </div>
    </div>
  );
};

export default ItemForm;
