import React from 'react';
import {
  List, Datagrid, TextField, NumberField, EditButton,
  Edit, SimpleForm, TextInput, NumberInput,
  Create, Show, SimpleShowLayout
} from 'react-admin';

export const InventoryTransactionList = props => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="transactionid" />
      <NumberField source="inventoryid" />
      <TextField source="transactiondate" />
      <TextField source="transactiontype" />
      <NumberField source="quantity" />
      <TextField source="reason" />
      <EditButton />
    </Datagrid>
  </List>
);

export const InventoryTransactionEdit = props => (
  <Edit {...props}>
    <SimpleForm>
      <NumberInput source="transactionid" />
      <NumberInput source="inventoryid" />
      <TextInput source="transactiondate" />
      <TextInput source="transactiontype" />
      <NumberInput source="quantity" />
      <TextInput source="reason" />
    </SimpleForm>
  </Edit>
);

export const InventoryTransactionCreate = props => (
  <Create {...props}>
    <SimpleForm>
      <NumberInput source="transactionid" />
      <NumberInput source="inventoryid" />
      <TextInput source="transactiondate" />
      <TextInput source="transactiontype" />
      <NumberInput source="quantity" />
      <TextInput source="reason" />
    </SimpleForm>
  </Create>
);

export const InventoryTransactionShow = props => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="transactionid" />
      <NumberField source="inventoryid" />
      <TextField source="transactiondate" />
      <TextField source="transactiontype" />
      <NumberField source="quantity" />
      <TextField source="reason" />
    </SimpleShowLayout>
  </Show>
);
