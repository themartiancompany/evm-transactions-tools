=================
evm-contract-call
=================

--------------------------------------------------------------
Ethereum Virtual Machine-compatible Contract Caller
--------------------------------------------------------------
:Version: evm-contract-call |version|
:Manual section: 1

Synopsis
========

evm-contract-call *[options]* *address* *method* (*args*)

Description
===========

Runs smart contract functions as if they were
normal programs.

The caller uses the Ethers JavaScript library to
communicate with blockchain networks and integrates
natively with and depends on evm-wallet
but it's also possible to directly provide seeds files.

Networks
=========
All those supported by
'evm-chains-info' as
well as direct RPC addresses.

Options
=======

-o output_file          Name of the file in which to save
                        the downloaded resource.
-A abi                  Contract ABI path.
-B bytecode             Contract bytecode path.
-C compiler_output      Contract compiler output
                        path (the hardhat artifact).
-N wallet_name          EVM wallet name.
-w wallet_path          EVM wallet file path.
-p wallet_path          EVM wallet password file.
-s wallet_seed          Standard 12-words seed phrase file.
-n network              EVM network name. Accepted values
                        are all those supported by
                        evm-chains-info as well as RPC addresses.
-t call_type            Static (read-only) or dynamic (read/write).
-k api_key              Etherscan-like service key.
-V msg_value            How much <measure_unit> attach to the
                        transaction.
-u measure_unit         Measure unit for the transaction
                        value. It can be 'ether' or 'wei'.
-r retries_max          Maximum number of retries before
                        declaring the call failed.
-S rpc_selection        RPC selection method. It can be
                        'kirsh' or 'random'.

-h                      This message.
-c                      Enable color output
-v                      Enable verbose output

Copyright
=========

Copyright Pellegrino Prevete. AGPL-3.0.

See also
========

* evm-contract-deployment-address
* evm-contract-deployments-dir
* evm-contract-deployment-networks
* evm-contract-deployment-versions
* evm-contracts-abi-get
* evm-wallet

.. include:: variables.rst
