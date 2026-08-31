import React from "react";
import {
  List,
  Datagrid,
  TextField,
  NumberField,
  EditButton,
  Edit,
  SimpleForm,
  TextInput,
  NumberInput,
  Create,
  Show,
  SimpleShowLayout,
  ReferenceField,
} from "react-admin";

export const PurchaseOrderList = (props) => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="purchaseorderid" />
      <ReferenceField reference="supplier" source="supplierid" label="supplier">
        <TextField source="suppliername" />
      </ReferenceField>
      <TextField source="orderdate" />
      <TextField source="expecteddeliverydate" />
      <TextField source="orderstatus" />
      <NumberField source="totalamount" />
      <EditButton />
    </Datagrid>
  </List>
);

export const PurchaseOrderEdit = (props) => (
  <Edit {...props}>
    <SimpleForm>
      <NumberInput source="purchaseorderid" />
      <NumberInput source="supplierid" />
      <TextInput source="orderdate" />
      <TextInput source="expecteddeliverydate" />
      <TextInput source="orderstatus" />
      <NumberInput source="totalamount" />
    </SimpleForm>
  </Edit>
);

export const PurchaseOrderCreate = (props) => (
  <Create {...props}>
    <SimpleForm>
      <NumberInput source="purchaseorderid" />
      <NumberInput source="supplierid" />
      <TextInput source="orderdate" />
      <TextInput source="expecteddeliverydate" />
      <TextInput source="orderstatus" />
      <NumberInput source="totalamount" />
    </SimpleForm>
  </Create>
);

export const PurchaseOrderShow = (props) => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="purchaseorderid" />
      <ReferenceField reference="supplier" source="supplierid" label="supplier">
        <TextField source="suppliername" />
      </ReferenceField>
      <TextField source="orderdate" />
      <TextField source="expecteddeliverydate" />
      <TextField source="orderstatus" />
      <NumberField source="totalamount" />
    </SimpleShowLayout>
  </Show>
);
