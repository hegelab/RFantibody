#!/bin/bash

poetry run python  /opt/RFantibody/src/rfantibody/rfdiffusion/run_inference.py \
    --config-name antibody \
    antibody.target_pdb=/opt/RFantibody/scripts/examples/example_inputs/rsv_site3.pdb \
    antibody.framework_pdb=/opt/RFantibody/scripts/examples/example_inputs/hu-4D5-8_Fv.pdb \
    inference.ckpt_override_path=/opt/RFantibody/weights/RFdiffusion_Ab.pt  \
    'ppi.hotspot_res=[T305,T456]' \
    'antibody.design_loops=[L1:8-13,L2:7,L3:9-11,H1:7,H2:6,H3:5-13]' \
    inference.num_designs=2 \
    inference.final_step=48 \
    diffuser.T=50 \
    inference.deterministic=True \
    inference.quiver=/opt/RFantibody/scripts/examples/example_outputs/ab_designs.qv
