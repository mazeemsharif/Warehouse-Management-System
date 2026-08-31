import React from 'react';
import { Layout } from 'react-admin';
import { AppBar, Toolbar, Typography, Box } from '@mui/material';

const MyAppBar = (props) => (
  <AppBar {...props}>
    <Toolbar>
      <Box display="flex" alignItems="center" flexGrow={1}>
        <img
          src="/logo.png"  // Place your logo in public/ folder
          alt="Warehouse Logo"
          style={{ height: 40, marginRight: 16 }}
        />
        <Typography variant="h6" color="inherit">
          Warehouse Admin
        </Typography>
      </Box>
    </Toolbar>
  </AppBar>
);

export const MyLayout = (props) => <Layout {...props} appBar={MyAppBar} />;