import React from 'react';
import {
  List, Datagrid, TextField, NumberField, EditButton,
  Edit, SimpleForm, TextInput, NumberInput,
  Create, Show, SimpleShowLayout
} from 'react-admin';

export const OrderLineList = props => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="orderlineid" />
      <NumberField source="orderid" />
      <NumberField source="productid" />
      <NumberField source="quantityordered" />
      <NumberField source="unitprice" />
      <NumberField source="totalprice" />
      <EditButton />
    </Datagrid>
  </List>
);

export const OrderLineEdit = props => (
  <Edit {...props}>
    <SimpleForm>
      <NumberInput source="orderlineid" />
      <NumberInput source="orderid" />
      <NumberInput source="productid" />
      <NumberInput source="quantityordered" />
      <NumberInput source="unitprice" />
      <NumberInput source="totalprice" />
    </SimpleForm>
  </Edit>
);

export const OrderLineCreate = props => (
  <Create {...props}>
    <SimpleForm>
      <NumberInput source="orderlineid" />
      <NumberInput source="orderid" />
      <NumberInput source="productid" />
      <NumberInput source="quantityordered" />
      <NumberInput source="unitprice" />
      <NumberInput source="totalprice" />
    </SimpleForm>
  </Create>
);

export const OrderLineShow = props => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="orderlineid" />
      <NumberField source="orderid" />
      <NumberField source="productid" />
      <NumberField source="quantityordered" />
      <NumberField source="unitprice" />
      <NumberField source="totalprice" />
    </SimpleShowLayout>
  </Show>
);
