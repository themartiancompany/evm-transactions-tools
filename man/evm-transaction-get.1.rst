..
   SPDX-License-Identifier: AGPL-3.0-or-later

   ----------------------------------------------------------------------
   Copyright © 2024, 2025  Pellegrino Prevete

   All rights reserved
   ----------------------------------------------------------------------

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU Affero General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU Affero General Public License for more details.

   You should have received a copy of the GNU Affero General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.


===================
evm-transaction-get
===================

----------------------------------------------------------------------
Ethereum Virtual Machine (EVM) compatible transactions retrieval tool
----------------------------------------------------------------------
:Version: evm-transaction-get |version|
:Manual section: 1

Synopsis
========

evm-transaction-get *[options]* *transaction_address*

Description
===========
Retrieves EVM networks transactions.

The caller uses the Ethers JavaScript library to
communicate with blockchain networks and can
perform authenticated RPC calls through evm-wallet.

Networks
=========

All those supported by
'evm-chains-info' as
well as direct RPC addresses.

Options
=======

-a                      Whether to perform an authenticated
                        RPC call.
-N wallet_name          EVM wallet name.
-w wallet_path          EVM wallet file path.
-p wallet_path          EVM wallet password file.
-s wallet_seed          EVM wallet seed file.
-n network              EVM network name. Accepted values
                        are all those supported by
                        evm-chains-info and RPC addresses.
-k api_key              Etherscan-like service key.
-u measure_unit         Measure unit for the transaction
                        value. It can be 'ether' or 'wei'.
-r retries_max          Maximum number of retries before
                        declaring the call failed.
-S rpc_selection        RPC selection method. It can be
                        'kirsh' or 'random'.
-t transaction_type     It can be 'transaction' or
                        'receipt'.
-f tx_field             Returns a specific field from
                        the transaction.
-d y\/n                 Whether to remove quotes from
                        the field value (for string fields).
-o output_path          If no transaction field is specified,
                        it will save the output in json format
                        at the specified location.

-h                      Display help.
-c                      Enable color output
-v                      Enable verbose output

Bugs
====

https://github.com/themartiancompany/evm-transactions-tools/-/issues

Copyright
=========

Copyright Pellegrino Prevete. AGPL-3.0.

See also
========

* evm-contract-call
* evm-contract-deployer-get
* evm-wallet

.. include:: variables.rst
