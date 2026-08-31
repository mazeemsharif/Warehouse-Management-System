import React from 'react';
import { Admin, Resource } from 'react-admin';
import { supabaseDataProvider } from 'ra-supabase';
import { supabaseClient } from './supabaseClient';
import { authProvider } from './authProvider';
import { MyLayout } from './Layout';
import { theme } from './theme';

// Icons
import WarehouseIcon from '@mui/icons-material/Warehouse';
import PeopleIcon from '@mui/icons-material/People';
import InventoryIcon from '@mui/icons-material/Inventory';
import ShoppingCartIcon from '@mui/icons-material/ShoppingCart';
import ReceiptIcon from '@mui/icons-material/Receipt';
import AttachMoneyIcon from '@mui/icons-material/AttachMoney';
import LocalShippingIcon from '@mui/icons-material/LocalShipping';
import ReturnIcon from '@mui/icons-material/SwapHoriz';
import BusinessIcon from '@mui/icons-material/Business';
import PersonIcon from '@mui/icons-material/Person';
import ListAltIcon from '@mui/icons-material/ListAlt';
import LocationOnIcon from '@mui/icons-material/LocationOn';
import TrendingUpIcon from '@mui/icons-material/TrendingUp';
import AssignmentIcon from '@mui/icons-material/Assignment';

// Resource components
import { WarehouseList, WarehouseEdit, WarehouseCreate, WarehouseShow } from './resources/Warehouse';
import { SupplierList, SupplierEdit, SupplierCreate, SupplierShow } from './resources/Supplier';
import { ProductList, ProductEdit, ProductCreate, ProductShow } from './resources/Product';
import { EmployeeList, EmployeeEdit, EmployeeCreate, EmployeeShow } from './resources/Employee';
import { WarehouseLocationList, WarehouseLocationEdit, WarehouseLocationCreate, WarehouseLocationShow } from './resources/WarehouseLocation';
import { InventoryList, InventoryEdit, InventoryCreate, InventoryShow } from './resources/Inventory';
import { CustomerList, CustomerEdit, CustomerCreate, CustomerShow } from './resources/Customer';
import { OrderPList, OrderPEdit, OrderPCreate, OrderPShow } from './resources/OrderP';
import { OrderLineList, OrderLineEdit, OrderLineCreate, OrderLineShow } from './resources/OrderLine';
import { ShipmentList, ShipmentEdit, ShipmentCreate, ShipmentShow } from './resources/Shipment';
import { ReturnPList, ReturnPEdit, ReturnPCreate, ReturnPShow } from './resources/ReturnP';
import { InventoryTransactionList, InventoryTransactionEdit, InventoryTransactionCreate, InventoryTransactionShow } from './resources/InventoryTransaction';
import { PurchaseOrderList, PurchaseOrderEdit, PurchaseOrderCreate, PurchaseOrderShow } from './resources/PurchaseOrder';
import { PaymentList, PaymentEdit, PaymentCreate, PaymentShow } from './resources/Payment';

const primaryKeysMap = new Map([
  ['warehouse',            ['warehouseid']],
  ['supplier',             ['supplierid']],
  ['product',              ['productid']],
  ['employee',             ['employeeid']],
  ['warehouselocation',    ['warehouselocationid']],
  ['inventory',            ['inventoryid']],
  ['customer',             ['customerid']],
  ['orderp',               ['orderid']],
  ['orderline',            ['orderlineid']],
  ['shipment',             ['shipmentid']],
  ['returnp',              ['returnid']],
  ['inventorytransaction', ['transactionid']],
  ['purchaseorder',        ['purchaseorderid']],
  ['payment',              ['paymentid']],
]);

const dataProvider = supabaseDataProvider({
  client: supabaseClient,
  instanceUrl: process.env.REACT_APP_SUPABASE_URL,
  apiKey: process.env.REACT_APP_SUPABASE_ANON_KEY,
  primaryKeys: primaryKeysMap,
});

const App = () => (
  <Admin 
    dataProvider={dataProvider} 
    authProvider={authProvider}
    layout={MyLayout}
    theme={theme}
  >
    <Resource 
      name="warehouse" 
      icon={WarehouseIcon}
      list={WarehouseList} 
      edit={WarehouseEdit} 
      create={WarehouseCreate} 
      show={WarehouseShow} 
    />
    <Resource 
      name="supplier" 
      icon={BusinessIcon}
      list={SupplierList} 
      edit={SupplierEdit} 
      create={SupplierCreate} 
      show={SupplierShow} 
    />
    <Resource 
      name="product" 
      icon={InventoryIcon}
      list={ProductList} 
      edit={ProductEdit} 
      create={ProductCreate} 
      show={ProductShow} 
    />
    <Resource 
      name="employee" 
      icon={PeopleIcon}
      list={EmployeeList} 
      edit={EmployeeEdit} 
      create={EmployeeCreate} 
      show={EmployeeShow} 
    />
    <Resource 
      name="warehouselocation" 
      icon={LocationOnIcon}
      options={{label: 'Warehouse Location'}} 
      list={WarehouseLocationList} 
      edit={WarehouseLocationEdit} 
      create={WarehouseLocationCreate} 
      show={WarehouseLocationShow} 
    />
    <Resource 
      name="inventory" 
      icon={TrendingUpIcon}
      list={InventoryList} 
      edit={InventoryEdit} 
      create={InventoryCreate} 
      show={InventoryShow} 
    />
    <Resource 
      name="customer" 
      icon={PersonIcon}
      list={CustomerList} 
      edit={CustomerEdit} 
      create={CustomerCreate} 
      show={CustomerShow} 
    />
    <Resource 
      name="orderp" 
      icon={ShoppingCartIcon}
      options={{label: 'Orders'}} 
      list={OrderPList} 
      edit={OrderPEdit} 
      create={OrderPCreate} 
      show={OrderPShow} 
    />
    <Resource 
      name="orderline" 
      icon={ListAltIcon}
      list={OrderLineList} 
      edit={OrderLineEdit} 
      create={OrderLineCreate} 
      show={OrderLineShow} 
    />
    <Resource 
      name="shipment" 
      icon={LocalShippingIcon}
      list={ShipmentList} 
      edit={ShipmentEdit} 
      create={ShipmentCreate} 
      show={ShipmentShow} 
    />
    <Resource 
      name="returnp" 
      icon={ReturnIcon}
      options={{label: 'Returns'}} 
      list={ReturnPList} 
      edit={ReturnPEdit} 
      create={ReturnPCreate} 
      show={ReturnPShow} 
    />
    <Resource 
      name="inventorytransaction" 
      icon={AssignmentIcon}
      options={{label: 'Inventory Transactions'}} 
      list={InventoryTransactionList} 
      edit={InventoryTransactionEdit} 
      create={InventoryTransactionCreate} 
      show={InventoryTransactionShow} 
    />
    <Resource 
      name="purchaseorder" 
      icon={ReceiptIcon}
      options={{label: 'Purchase Orders'}} 
      list={PurchaseOrderList} 
      edit={PurchaseOrderEdit} 
      create={PurchaseOrderCreate} 
      show={PurchaseOrderShow} 
    />
    <Resource 
      name="payment" 
      icon={AttachMoneyIcon}
      list={PaymentList} 
      edit={PaymentEdit} 
      create={PaymentCreate} 
      show={PaymentShow} 
    />
  </Admin>
);

export default App;