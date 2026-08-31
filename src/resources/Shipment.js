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

export const ShipmentList = (props) => (
  <List {...props}>
    <Datagrid rowClick="show">
      <NumberField source="shipmentid" />
      <NumberField source="orderid" />
      <ReferenceField
        reference="warehouse"
        source="warehouseid"
        label="Warehouse"
      >
        <TextField source="warehousename" />
      </ReferenceField>
      <TextField source="shipmentdate" />
      <TextField source="destination" />
      <TextField source="shipmentstatus" />
      <TextField source="trackingnumber" />
      <TextField source="estimatedarrival" />
      <EditButton />
    </Datagrid>
  </List>
);

export const ShipmentEdit = (props) => (
  <Edit {...props}>
    <SimpleForm>
      <NumberInput source="shipmentid" />
      <NumberInput source="orderid" />
      <NumberInput source="warehouseid" />
      <TextInput source="shipmentdate" />
      <TextInput source="destination" />
      <TextInput source="shipmentstatus" />
      <TextInput source="trackingnumber" />
      <TextInput source="estimatedarrival" />
    </SimpleForm>
  </Edit>
);

export const ShipmentCreate = (props) => (
  <Create {...props}>
    <SimpleForm>
      <NumberInput source="shipmentid" />
      <NumberInput source="orderid" />
      <NumberInput source="warehouseid" />
      <TextInput source="shipmentdate" />
      <TextInput source="destination" />
      <TextInput source="shipmentstatus" />
      <TextInput source="trackingnumber" />
      <TextInput source="estimatedarrival" />
    </SimpleForm>
  </Create>
);

export const ShipmentShow = (props) => (
  <Show {...props}>
    <SimpleShowLayout>
      <NumberField source="shipmentid" />
      <NumberField source="orderid" />
      <ReferenceField
        reference="warehouse"
        source="warehouseid"
        label="Warehouse"
      >
        <TextField source="warehousename" />
      </ReferenceField>
      <TextField source="shipmentdate" />
      <TextField source="destination" />
      <TextField source="shipmentstatus" />
      <TextField source="trackingnumber" />
      <TextField source="estimatedarrival" />
    </SimpleShowLayout>
  </Show>
);
