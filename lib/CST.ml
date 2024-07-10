(* Generated by ocaml-tree-sitter. *)
(*
   move_on_aptos grammar

   entrypoint: source_file
*)

open! Sexplib.Conv
open Tree_sitter_run

type tok_xdquot_pat_92a0a93_dquot = Token.t

type pat_57a456d = Token.t (* pattern \d[\d_]* *)

type imm_tok_prec_p2_slash = Token.t (* "/" *)

type bool_literal = [
    `True of Token.t (* "true" *)
  | `False of Token.t (* "false" *)
]

type pat_8bc5a9c = Token.t (* pattern [01][01_]* *)

type block_comment_explicit = unit (* blank *)

type reuseable_keywords = [
    `For of Token.t (* "for" *)
  | `While of Token.t (* "while" *)
  | `Friend of Token.t (* "friend" *)
]

type pat_4fd4a56 = Token.t (* pattern .* *)

type tok_bdquot_rep_choice_imm_tok_bslash_choice_pat_9c2bd89_dquot = Token.t

type line_comment_explicit = unit (* blank *)

type doc_line_comment = Token.t

type pat_0x = Token.t (* pattern 0[xX] *)

type number_type = [
    `U8 of Token.t (* "u8" *)
  | `U16 of Token.t (* "u16" *)
  | `U32 of Token.t (* "u32" *)
  | `U64 of Token.t (* "u64" *)
  | `U128 of Token.t (* "u128" *)
  | `U256 of Token.t (* "u256" *)
]

type quantifier_directive = [
    `Exists of Token.t (* "exists" *)
  | `Forall of Token.t (* "forall" *)
  | `Choose of Token.t (* "choose" *)
  | `Min of Token.t (* "min" *)
]

type pat_9bd0c11 = Token.t (* pattern [0-7][0-7_]* *)

type block_doc_comment_marker = Token.t

type pat_0b = Token.t (* pattern 0[bB] *)

type imm_tok_prec_p1_pat_4fd4a56 = Token.t (* pattern .* *)

type pat_c1c0c3a = Token.t (* pattern [\da-fA-F][\da-fA-F_]* *)

type identifier = Token.t

type imm_tok_prec_p2_slashslash = Token.t (* "//" *)

type pat_0o = Token.t (* pattern 0[oO] *)

type imm_tok_lt = Token.t (* "<" *)

type block_comment_content = Token.t

type byte_string = [
    `Tok_xdquot_pat_92a0a93_dquot of tok_xdquot_pat_92a0a93_dquot
  | `Tok_bdquot_rep_choice_imm_tok_bslash_choice_pat_9c2bd89_dquot of
      tok_bdquot_rep_choice_imm_tok_bslash_choice_pat_9c2bd89_dquot
]

type primitive_type = [
    `Num_type of number_type
  | `Bool of Token.t (* "bool" *)
  | `Addr of Token.t (* "address" *)
  | `Vec of Token.t (* "vector" *)
]

type module_member_modifier = [
    `Visi of (
        Token.t (* "public" *)
      * (
            Token.t (* "(" *)
          * [
                `Script of Token.t (* "script" *)
              | `Friend of Token.t (* "friend" *)
            ]
          * Token.t (* ")" *)
        )
          option
    )
  | `Native of Token.t (* "native" *)
  | `Entry of Token.t (* "entry" *)
]

type use_alias = (Token.t (* "as" *) * identifier (*tok*))

type attribute_name = (
    identifier (*tok*)
  * (Token.t (* "::" *) * identifier (*tok*)) list (* zero or more *)
)

type ident_or_wildcard = [
    `Id of identifier (*tok*)
  | `STAR of Token.t (* "*" *)
]

type spec_apply_fragment = [
    `STAR of Token.t (* "*" *)
  | `Id of identifier (*tok*)
]

type line_comment = (
    Token.t (* "//" *)
  * [
        `Imm_tok_prec_p2_slas_pat_4fd4a56 of (
            imm_tok_prec_p2_slashslash (*tok*) * pat_4fd4a56
        )
      | `Imm_tok_prec_p2_slash_doc_line_comm of (
            imm_tok_prec_p2_slash (*tok*) * doc_line_comment (*tok*)
        )
      | `Imm_tok_prec_p1_pat_4fd4a56 of imm_tok_prec_p1_pat_4fd4a56
    ]
)

type number = [
    `Pat_57a456d of pat_57a456d
  | `Pat_0x_pat_c1c0c3a of (pat_0x * pat_c1c0c3a)
  | `Pat_0b_pat_8bc5a9c of (pat_0b * pat_8bc5a9c)
  | `Pat_0o_pat_9bd0c11 of (pat_0o * pat_9bd0c11)
]

type ability = [
    `Choice_copy of [
        `Copy of Token.t (* "copy" *)
      | `Drop of Token.t (* "drop" *)
      | `Store of Token.t (* "store" *)
      | `Key of Token.t (* "key" *)
    ]
  | `Ellips of Token.t (* "..." *)
]

type block_comment = (
    Token.t (* "/*" *)
  * [
        `Blk_doc_comm_marker_opt_blk_comm_content of (
            block_doc_comment_marker (*tok*)
          * block_comment_content (*tok*) option
        )
      | `Blk_comm_content of block_comment_content (*tok*)
    ]
      option
  * Token.t (* "*/" *)
)

type discouraged_name = [
    `Prim_type of primitive_type
  | `Quan_dire of quantifier_directive
  | `Reus_keywos of reuseable_keywords
]

type use_member = [
    `Id_opt_use_alias of (identifier (*tok*) * use_alias option)
  | `Ellips of Token.t (* "..." *)
]

type numerical_addr = number

type constraints = (
    Token.t (* ":" *)
  * ability
  * (Token.t (* "+" *) * ability) list (* zero or more *)
)

type abilities = (
    ability
  * (Token.t (* "," *) * ability) list (* zero or more *)
)

type var_name = [
    `Id of identifier (*tok*)
  | `Disc_name of discouraged_name
]

type leading_name_access_wildcard = [
    `Nume_addr of numerical_addr
  | `Choice_id of ident_or_wildcard
]

type leading_name_access = [
    `Nume_addr of numerical_addr
  | `Id of identifier (*tok*)
]

type type_param = [
    `Id_opt_consts of (identifier (*tok*) * constraints option)
  | `Ellips of Token.t (* "..." *)
]

type name_access_chain_wildcard = [
    `Choice_choice_id of [
        `Choice_id of ident_or_wildcard
      | `Disc_name of discouraged_name
    ]
  | `Choice_lead_name_access_wild_COLONCOLON_choice_id_opt_COLONCOLON_choice_id of (
        [
            `Lead_name_access_wild of leading_name_access_wildcard
          | `Disc_name of discouraged_name
        ]
      * Token.t (* "::" *)
      * ident_or_wildcard
      * (Token.t (* "::" *) * ident_or_wildcard) option
    )
]

type module_path = (
    (leading_name_access * Token.t (* "::" *)) option
  * identifier (*tok*)
)

type value = [
    `AT_lead_name_access of (Token.t (* "@" *) * leading_name_access)
  | `Bool_lit of bool_literal
  | `Num of numerical_addr
  | `Typed_num of (numerical_addr * number_type)
  | `Byte_str of byte_string
]

type name_access_chain = [
    `Choice_id of var_name
  | `Choice_lead_name_access_COLONCOLON_id_opt_COLONCOLON_id of (
        [
            `Lead_name_access of leading_name_access
          | `Disc_name of discouraged_name
        ]
      * Token.t (* "::" *)
      * identifier (*tok*)
      * (Token.t (* "::" *) * identifier (*tok*)) option
    )
]

type module_ident = (
    leading_name_access * Token.t (* "::" *) * identifier (*tok*)
)

type type_params = (
    Token.t (* "<" *)
  * (type_param * (Token.t (* "," *) * type_param) list (* zero or more *))
      option
  * Token.t (* "," *) option
  * Token.t (* ">" *)
)

type struct_type_parameter = (Token.t (* "phantom" *) option * type_param)

type anon_type__rep_COMMA_type__ac59fb8 = (
    type__
  * (Token.t (* "," *) * type__) list (* zero or more *)
)

and ref_type = [
    `AMP_type of (Token.t (* "&" *) * type_)
  | `AMPmut_type of (Token.t (* "&mut" *) * type_)
]

and type_ = [
    `Choice_name_access_chain_opt_type_args of (
        [
            `Name_access_chain of name_access_chain
          | `Prim_type of primitive_type
        ]
      * type_args option
    )
  | `Clos_type of (
        Token.t (* "|" *)
      * anon_type__rep_COMMA_type__ac59fb8 option
      * Token.t (* "," *) option
      * Token.t (* "|" *)
      * type__ option
    )
  | `Tuple_type of (
        Token.t (* "(" *)
      * anon_type__rep_COMMA_type__ac59fb8 option
      * Token.t (* "," *) option
      * Token.t (* ")" *)
    )
]

and type__ = [
    `Type of type_
  | `Ref_type of ref_type
  | `Ellips of Token.t (* "..." *)
]

and type_args = (
    imm_tok_lt (*tok*)
  * anon_type__rep_COMMA_type__ac59fb8 option
  * Token.t (* "," *) option
  * Token.t (* ">" *)
)

type friend_decl = (
    Token.t (* "friend" *) * name_access_chain * Token.t (* ";" *)
)

type anon_choice_value_f266929 = [
    `Value of value
  | `Name_access_chain of name_access_chain
]

type use_decl = (
    Token.t (* "use" *)
  * module_ident
  * [
        `Opt_use_alias of use_alias option
      | `COLONCOLON_use_member of (Token.t (* "::" *) * use_member)
      | `COLONCOLON_LCURL_opt_use_member_rep_COMMA_use_member_opt_COMMA_RCURL of (
            Token.t (* "::" *)
          * Token.t (* "{" *)
          * (
                use_member
              * (Token.t (* "," *) * use_member) list (* zero or more *)
            )
              option
          * Token.t (* "," *) option
          * Token.t (* "}" *)
        )
    ]
  * Token.t (* ";" *)
)

type spec_apply_pattern = (
    [ `Public of Token.t (* "public" *) | `Inte of Token.t (* "internal" *) ]
      option
  * spec_apply_fragment list (* one or more *)
  * type_params option
)

type struct_type_params = (
    Token.t (* "<" *)
  * (
        struct_type_parameter
      * (Token.t (* "," *) * struct_type_parameter) list (* zero or more *)
    )
      option
  * Token.t (* "," *) option
  * Token.t (* ">" *)
)

type parameter = [
    `Id_COLON_type_ of (identifier (*tok*) * Token.t (* ":" *) * type__)
  | `Ellips of Token.t (* "..." *)
]

type bind = [
    `Var_name of var_name
  | `Name_access_chain_opt_type_args_bind_fields of (
        name_access_chain
      * type_args option
      * bind_fields
    )
  | `Ellips of Token.t (* "..." *)
]

and bind_field = [
    `Choice_var_name of [
        `Var_name of var_name
      | `Var_name_COLON_bind of (var_name * Token.t (* ":" *) * bind)
    ]
  | `Ellips of Token.t (* "..." *)
]

and bind_fields = (
    Token.t (* "{" *)
  * (bind_field * (Token.t (* "," *) * bind_field) list (* zero or more *))
      option
  * Token.t (* "," *) option
  * Token.t (* "}" *)
)

type field_annot = [
    `Id_COLON_type_ of (identifier (*tok*) * Token.t (* ":" *) * type__)
  | `Ellips of Token.t (* "..." *)
]

type address_specifier = [
    `STAR of Token.t (* "*" *)
  | `Nume_addr of numerical_addr
  | `Name_access_chain_opt_opt_type_args_LPAR_id_RPAR of (
        name_access_chain
      * (
            type_args option
          * Token.t (* "(" *)
          * identifier (*tok*)
          * Token.t (* ")" *)
        )
          option
    )
]

type attribute_val = [
    `Choice_value of anon_choice_value_f266929
  | `Ellips of Token.t (* "..." *)
]

type spec_pragma_prop = (
    var_name
  * (Token.t (* "=" *) * anon_choice_value_f266929) option
)

type anon_spec_apply_pat_rep_COMMA_spec_apply_pat_d9a21d6 = (
    spec_apply_pattern
  * (Token.t (* "," *) * spec_apply_pattern) list (* zero or more *)
)

type struct_def_name = (identifier (*tok*) * struct_type_params option)

type parameters = (
    Token.t (* "(" *)
  * (parameter * (Token.t (* "," *) * parameter) list (* zero or more *))
      option
  * Token.t (* "," *) option
  * Token.t (* ")" *)
)

type anon_bind_rep_COMMA_bind_38cc8c1 = (
    bind
  * (Token.t (* "," *) * bind) list (* zero or more *)
)

type struct_body = (
    Token.t (* "{" *)
  * (field_annot * (Token.t (* "," *) * field_annot) list (* zero or more *))
      option
  * Token.t (* "," *) option
  * Token.t (* "}" *)
)

type access_specifier = (
    name_access_chain_wildcard
  * type_args option
  * (Token.t (* "(" *) * address_specifier * Token.t (* ")" *)) option
)

type anon_attr_rep_COMMA_attr_246bec5 = (
    attribute
  * (Token.t (* "," *) * attribute) list (* zero or more *)
)

and attribute = [
    `Choice_attr_name of [
        `Attr_name of attribute_name
      | `Attr_name_EQ_attr_val of (
            attribute_name * Token.t (* "=" *) * attribute_val
        )
      | `Attr_name_LPAR_opt_attr_rep_COMMA_attr_opt_COMMA_RPAR of (
            attribute_name
          * Token.t (* "(" *)
          * anon_attr_rep_COMMA_attr_246bec5 option
          * Token.t (* "," *) option
          * Token.t (* ")" *)
        )
    ]
  | `Ellips of Token.t (* "..." *)
]

type anon_spec_pragma_prop_rep_COMMA_spec_pragma_prop_588d25f = (
    spec_pragma_prop
  * (Token.t (* "," *) * spec_pragma_prop) list (* zero or more *)
)

type struct_signature = (
    Token.t (* "struct" *)
  * struct_def_name
  * (Token.t (* "has" *) * abilities) option
)

type spec_func_signatures = (
    identifier (*tok*)
  * type_params option
  * parameters
  * Token.t (* ":" *)
  * type__
)

type spec_target_signature_opt = (
    type_params option
  * parameters
  * (Token.t (* ":" *) * type__) option
)

type bind_list = [
    `Bind of bind
  | `LPAR_opt_bind_rep_COMMA_bind_opt_COMMA_RPAR of (
        Token.t (* "(" *)
      * anon_bind_rep_COMMA_bind_38cc8c1 option
      * Token.t (* "," *) option
      * Token.t (* ")" *)
    )
]

type lambda_bind_list = (
    Token.t (* "|" *)
  * anon_bind_rep_COMMA_bind_38cc8c1 option
  * Token.t (* "," *) option
  * Token.t (* "|" *)
)

type access_specifier_list = (
    access_specifier
  * (Token.t (* "," *) * access_specifier) list (* zero or more *)
  * Token.t (* "," *) option
)

type attributes =
  (
      Token.t (* "#" *)
    * Token.t (* "[" *)
    * anon_attr_rep_COMMA_attr_246bec5 option
    * Token.t (* "," *) option
    * Token.t (* "]" *)
  )
    list (* one or more *)

type condition_props = (
    Token.t (* "[" *)
  * anon_spec_pragma_prop_rep_COMMA_spec_pragma_prop_588d25f option
  * Token.t (* "," *) option
  * Token.t (* "]" *)
)

type spec_pragma = (
    Token.t (* "pragma" *)
  * anon_spec_pragma_prop_rep_COMMA_spec_pragma_prop_588d25f option
  * Token.t (* "," *) option
  * Token.t (* ";" *)
)

type struct_decl = (
    struct_signature
  * [ `Struct_body of struct_body | `SEMI of Token.t (* ";" *) ]
)

type spec_block_target = [
    `Id_opt_spec_target_sign_opt of (
        identifier (*tok*)
      * spec_target_signature_opt option
    )
  | `Module of Token.t (* "module" *)
  | `Schema_id_opt_type_params of (
        Token.t (* "schema" *)
      * identifier (*tok*)
      * type_params option
    )
]

type specifier = [
    `Pure of Token.t (* "pure" *)
  | `Rep1_opt_BANG_choice_acquis_access_spec_list of
      (
          Token.t (* "!" *) option
        * [
              `Acquis of Token.t (* "acquires" *)
            | `Reads of Token.t (* "reads" *)
            | `Writes of Token.t (* "writes" *)
          ]
        * access_specifier_list
      )
        list (* one or more *)
]

type script_use_decl = [
    `Opt_attris_use_decl of (attributes option * use_decl)
  | `Ellips of Token.t (* "..." *)
]

type aborts_if = (
    Token.t (* "aborts_if" *)
  * condition_props option
  * expr
  * (Token.t (* "with" *) * expr) option
)

and aborts_with_or_modifies = (
    [
        `Aborts_with of Token.t (* "aborts_with" *)
      | `Modifs of Token.t (* "modifies" *)
    ]
  * condition_props option
  * expr
  * (Token.t (* "," *) * expr) list (* zero or more *)
)

and anon_choice_blk_f78fea4 = [ `Blk of block | `SEMI of Token.t (* ";" *) ]

and anon_expr_rep_COMMA_expr_8e432c6 = (
    expr
  * (Token.t (* "," *) * expr) list (* zero or more *)
)

and asserts = (
    [
        `Assert of Token.t (* "assert" *)
      | `Assume of Token.t (* "assume" *)
      | `Ensures of Token.t (* "ensures" *)
      | `Requis of Token.t (* "requires" *)
    ]
  * condition_props option
  * expr
)

and assignment = (unary_expr * Token.t (* "=" *) * expr)

and bin_op_expr = [
    `Op_expr_EQEQGT_op_expr of (op_expr * Token.t (* "==>" *) * op_expr)
  | `Op_expr_LTEQEQGT_op_expr of (op_expr * Token.t (* "<==>" *) * op_expr)
  | `Op_expr_BARBAR_op_expr of (op_expr * Token.t (* "||" *) * op_expr)
  | `Op_expr_AMPAMP_op_expr of (op_expr * Token.t (* "&&" *) * op_expr)
  | `Op_expr_EQEQ_op_expr of (op_expr * Token.t (* "==" *) * op_expr)
  | `Op_expr_BANGEQ_op_expr of (op_expr * Token.t (* "!=" *) * op_expr)
  | `Op_expr_LT_op_expr of (op_expr * Token.t (* "<" *) * op_expr)
  | `Op_expr_GT_op_expr of (op_expr * Token.t (* ">" *) * op_expr)
  | `Op_expr_LTEQ_op_expr of (op_expr * Token.t (* "<=" *) * op_expr)
  | `Op_expr_GTEQ_op_expr of (op_expr * Token.t (* ">=" *) * op_expr)
  | `Op_expr_DOTDOT_op_expr of (op_expr * Token.t (* ".." *) * op_expr)
  | `Op_expr_BAR_op_expr of (op_expr * Token.t (* "|" *) * op_expr)
  | `Op_expr_HAT_op_expr of (op_expr * Token.t (* "^" *) * op_expr)
  | `Op_expr_AMP_op_expr of (op_expr * Token.t (* "&" *) * op_expr)
  | `Op_expr_LTLT_op_expr of (op_expr * Token.t (* "<<" *) * op_expr)
  | `Op_expr_GTGT_op_expr of (op_expr * Token.t (* ">>" *) * op_expr)
  | `Op_expr_PLUS_op_expr of (op_expr * Token.t (* "+" *) * op_expr)
  | `Op_expr_DASH_op_expr of (op_expr * Token.t (* "-" *) * op_expr)
  | `Op_expr_STAR_op_expr of (op_expr * Token.t (* "*" *) * op_expr)
  | `Op_expr_SLASH_op_expr of (op_expr * Token.t (* "/" *) * op_expr)
  | `Op_expr_PERC_op_expr of (op_expr * Token.t (* "%" *) * op_expr)
]

and block = (
    Token.t (* "{" *)
  * use_decl list (* zero or more *)
  * sequence_item list (* zero or more *)
  * expr option
  * Token.t (* "}" *)
)

and call_args = (
    Token.t (* "(" *)
  * anon_expr_rep_COMMA_expr_8e432c6 option
  * Token.t (* "," *) option
  * Token.t (* ")" *)
)

and control_body = [ `Blk of block | `Expr of expr ]

and deep_ellipsis = (Token.t (* "<..." *) * expr * Token.t (* "...>" *))

and dot_or_index_chain = [
    `Access_field of (
        dot_or_index_chain * Token.t (* "." *) * identifier (*tok*)
    )
  | `Rece_call of (
        dot_or_index_chain
      * Token.t (* "." *)
      * identifier (*tok*)
      * (Token.t (* "::" *) * type_args) option
      * call_args
    )
  | `Mem_access of (
        dot_or_index_chain * Token.t (* "[" *) * expr * Token.t (* "]" *)
    )
  | `Term of term
  | `Field_access_ellips_expr of field_access_ellipsis_expr
]

and emits = (
    Token.t (* "emits" *)
  * condition_props option
  * expr
  * Token.t (* "to" *)
  * expr
  * (Token.t (* "if" *) * expr) option
)

and expr = [
    `Assign of assignment
  | `Op_expr of op_expr
  | `Quan of quantifier
  | `Lambda_bind_list_expr of (lambda_bind_list * expr)
  | `Ellips of Token.t (* "..." *)
  | `Deep_ellips of deep_ellipsis
]

and expr_field = [
    `Id of identifier (*tok*)
  | `Id_COLON_expr of (identifier (*tok*) * Token.t (* ":" *) * expr)
  | `Ellips of Token.t (* "..." *)
]

and field_access_ellipsis_expr = (
    dot_or_index_chain * Token.t (* "." *) * Token.t (* "..." *)
)

and for_loop_expr = [
    `For_LPAR_var_name_in_un_expr_DOTDOT_un_expr_opt_spec_loop_inva_RPAR_blk of (
        Token.t (* "for" *)
      * Token.t (* "(" *)
      * var_name
      * Token.t (* "in" *)
      * unary_expr
      * Token.t (* ".." *)
      * unary_expr
      * spec_loop_invariant option
      * Token.t (* ")" *)
      * block
    )
  | `For_LPAR_ellips_RPAR_blk of (
        Token.t (* "for" *) * Token.t (* "(" *) * Token.t (* "..." *)
      * Token.t (* ")" *) * block
    )
]

and name_expr = [
    `Var of (name_access_chain * type_args option)
  | `Call_expr of (name_access_chain * type_args option * call_args)
  | `Pack_expr of (
        name_access_chain
      * type_args option
      * Token.t (* "{" *)
      * (
            expr_field
          * (Token.t (* "," *) * expr_field) list (* zero or more *)
        )
          option
      * Token.t (* "," *) option
      * Token.t (* "}" *)
    )
  | `Macro_call_expr of (name_access_chain * Token.t (* "!" *) * call_args)
]

and op_expr = [ `Un_expr of unary_expr | `Bin_op_expr of bin_op_expr ]

and parenthesized_expr = (Token.t (* "(" *) * expr * Token.t (* ")" *))

and quantifier = [
    `Choice_forall_quan_bind_rep_COMMA_quan_bind_opt_triggs_opt_where_expr_COLON_expr of (
        [
            `Forall of Token.t (* "forall" *)
          | `Exists of Token.t (* "exists" *)
        ]
      * quantifier_bind
      * (Token.t (* "," *) * quantifier_bind) list (* zero or more *)
      * triggers option
      * (Token.t (* "where" *) * expr) option
      * Token.t (* ":" *)
      * expr
    )
  | `Choose_opt_min_quan_bind_where_expr of (
        Token.t (* "choose" *)
      * Token.t (* "min" *) option
      * quantifier_bind
      * Token.t (* "where" *)
      * expr
    )
]

and quantifier_bind = [
    `Id_COLON_type_ of (identifier (*tok*) * Token.t (* ":" *) * type__)
  | `Id_in_expr of (identifier (*tok*) * Token.t (* "in" *) * expr)
]

and return_expr = [
    `Ret of Token.t (* "return" *)
  | `Ret_expr of (Token.t (* "return" *) * expr)
]

and semgrep_expression = [
    `Expr of expr
  | `Let_expr of (
        Token.t (* "let" *)
      * bind_list
      * (Token.t (* ":" *) * type__) option
      * (Token.t (* "=" *) * expr) option
    )
]

and sequence_item = [
    `Choice_expr_SEMI of (semgrep_expression * Token.t (* ";" *))
  | `Ellips of Token.t (* "..." *)
]

and spec_apply = (
    Token.t (* "apply" *)
  * expr
  * Token.t (* "to" *)
  * anon_spec_apply_pat_rep_COMMA_spec_apply_pat_d9a21d6 option
  * Token.t (* "," *) option
  * (
        Token.t (* "except" *)
      * anon_spec_apply_pat_rep_COMMA_spec_apply_pat_d9a21d6 option
      * Token.t (* "," *) option
    )
      option
  * Token.t (* ";" *)
)

and spec_axiom = (
    Token.t (* "axiom" *)
  * type_params option
  * condition_props option
  * expr
  * Token.t (* ";" *)
)

and spec_block = (
    Token.t (* "spec" *)
  * [
        `Spec_func of spec_func
      | `Opt_spec_blk_target_LCURL_rep_use_decl_rep_spec_blk_member_RCURL of (
            spec_block_target option
          * Token.t (* "{" *)
          * use_decl list (* zero or more *)
          * spec_block_member list (* zero or more *)
          * Token.t (* "}" *)
        )
    ]
)

and spec_block_member = [
    `Choice_spec_inva of [
        `Spec_inva of spec_invariant
      | `Spec_cond of spec_condition
      | `Spec_func of spec_func
      | `Spec_var of spec_variable
      | `Spec_incl of spec_include
      | `Spec_apply of spec_apply
      | `Spec_pragma of spec_pragma
      | `Spec_let of spec_let
      | `Spec_update of spec_update
      | `Spec_axiom of spec_axiom
    ]
  | `Ellips of Token.t (* "..." *)
]

and spec_condition = (
    [
        `Asserts of asserts
      | `Aborts_if of aborts_if
      | `Aborts_with_or_modifs of aborts_with_or_modifies
      | `Emits of emits
    ]
  * Token.t (* ";" *)
)

and spec_func = [
    `Fun_spec_func_signas_choice_blk of (
        Token.t (* "fun" *) * spec_func_signatures * anon_choice_blk_f78fea4
    )
  | `Native_fun_spec_func_signas_SEMI of (
        Token.t (* "native" *) * Token.t (* "fun" *) * spec_func_signatures
      * Token.t (* ";" *)
    )
]

and spec_include = (
    Token.t (* "include" *)
  * condition_props option
  * expr
  * Token.t (* ";" *)
)

and spec_invariant = (
    Token.t (* "invariant" *)
  * type_params option
  * Token.t (* "update" *) option
  * condition_props option
  * expr
  * Token.t (* ";" *)
)

and spec_let = (
    Token.t (* "let" *)
  * Token.t (* "post" *) option
  * var_name
  * Token.t (* "=" *)
  * expr
  * Token.t (* ";" *)
)

and spec_loop_invariant = spec_block

and spec_update = (Token.t (* "update" *) * assignment * Token.t (* ";" *))

and spec_variable = (
    [ `Global of Token.t (* "global" *) | `Local of Token.t (* "local" *) ]
      option
  * identifier (*tok*)
  * type_params option
  * Token.t (* ":" *)
  * type__
  * (Token.t (* "=" *) * expr) option
  * Token.t (* ";" *)
)

and term = [
    `Brk of Token.t (* "break" *)
  | `Cont of Token.t (* "continue" *)
  | `Vec_value_expr of (
        Token.t (* "vector" *)
      * type_args option
      * Token.t (* "[" *)
      * anon_expr_rep_COMMA_expr_8e432c6 option
      * Token.t (* "," *) option
      * Token.t (* "]" *)
    )
  | `Value of value
  | `Tuple_expr of (
        Token.t (* "(" *)
      * anon_expr_rep_COMMA_expr_8e432c6 option
      * Token.t (* "," *) option
      * Token.t (* ")" *)
    )
  | `Type_hint_expr of (
        Token.t (* "(" *) * expr * Token.t (* ":" *) * type__
      * Token.t (* ")" *)
    )
  | `Cast_expr of (
        Token.t (* "(" *) * expr * Token.t (* "as" *) * type__
      * Token.t (* ")" *)
    )
  | `Blk of block
  | `Choice_var of name_expr
  | `Spec_blk of spec_loop_invariant
  | `If_expr of (
        Token.t (* "if" *)
      * parenthesized_expr
      * control_body
      * (Token.t (* "else" *) * control_body) option
    )
  | `While_expr of (
        Token.t (* "while" *)
      * parenthesized_expr
      * control_body
      * spec_loop_invariant option
    )
  | `Loop_expr of (Token.t (* "loop" *) * control_body)
  | `Ret_expr of return_expr
  | `Abort_expr of (Token.t (* "abort" *) * expr)
  | `For_loop_expr of for_loop_expr
  | `Ellips of Token.t (* "..." *)
  | `Deep_ellips of deep_ellipsis
]

and triggers =
  (
      Token.t (* "{" *)
    * anon_expr_rep_COMMA_expr_8e432c6 option
    * Token.t (* "," *) option
    * Token.t (* "}" *)
  )
    list (* one or more *)

and unary_expr = [
    `Not_expr of (Token.t (* "!" *) * unary_expr)
  | `Ref_expr of (Token.t (* "&" *) * unary_expr)
  | `Ref_mut_expr of (Token.t (* "&mut" *) * unary_expr)
  | `Deref_expr of (Token.t (* "*" *) * unary_expr)
  | `Move_expr of (Token.t (* "move" *) * identifier (*tok*))
  | `Copy_expr of (Token.t (* "copy" *) * identifier (*tok*))
  | `Choice_access_field of dot_or_index_chain
  | `Ellips of Token.t (* "..." *)
  | `Deep_ellips of deep_ellipsis
  | `Field_access_ellips_expr of field_access_ellipsis_expr
  | `Typed_meta of (
        Token.t (* "(" *) * identifier (*tok*) * Token.t (* ":" *) * type__
      * Token.t (* ")" *)
    )
]

type function_signature = (
    Token.t (* "inline" *) option
  * Token.t (* "fun" *)
  * identifier (*tok*)
  * type_params option
  * parameters
  * (Token.t (* ":" *) * type__) option
  * specifier option
)

type script_spec_block = [
    `Opt_attris_spec_blk of (attributes option * spec_loop_invariant)
  | `Ellips of Token.t (* "..." *)
]

type constant_decl = (
    Token.t (* "const" *) * identifier (*tok*) * Token.t (* ":" *) * type__
  * Token.t (* "=" *) * expr * Token.t (* ";" *)
)

type function_decl = (function_signature * anon_choice_blk_f78fea4)

type script_constant_decl = [
    `Opt_attris_cst_decl of (attributes option * constant_decl)
  | `Ellips of Token.t (* "..." *)
]

type declaration = [
    `Opt_attris_choice_use_decl of (
        attributes option
      * [
            `Use_decl of use_decl
          | `Friend_decl of friend_decl
          | `Spec_spec_func of (Token.t (* "spec" *) * spec_func)
          | `Spec_blk of spec_loop_invariant
          | `Spec_inva of spec_invariant
          | `Rep_module_member_modi_choice_cst_decl of (
                module_member_modifier list (* zero or more *)
              * [
                    `Cst_decl of constant_decl
                  | `Struct_decl of struct_decl
                  | `Func_decl of function_decl
                ]
            )
        ]
    )
  | `Ellips of Token.t (* "..." *)
]

type script_func_decl = [
    `Opt_attris_rep_module_member_modi_func_decl of (
        attributes option
      * module_member_modifier list (* zero or more *)
      * function_decl
    )
  | `Ellips of Token.t (* "..." *)
]

type module_ = (
    [ `Spec of Token.t (* "spec" *) | `Module_kw of Token.t (* "module" *) ]
  * module_path
  * Token.t (* "{" *)
  * declaration list (* zero or more *)
  * Token.t (* "}" *)
)

type semgrep_statement =
  [ `Seq_item of sequence_item | `Decl of declaration ]
    list (* one or more *)

type script = (
    Token.t (* "script" *)
  * Token.t (* "{" *)
  * script_use_decl list (* zero or more *)
  * script_constant_decl list (* zero or more *)
  * script_func_decl
  * script_spec_block list (* zero or more *)
  * Token.t (* "}" *)
)

type address_member = [
    `Opt_attris_module of (attributes option * module_)
  | `Ellips of Token.t (* "..." *)
]

type address_block = (
    Token.t (* "address" *)
  * leading_name_access
  * Token.t (* "{" *)
  * address_member list (* zero or more *)
  * Token.t (* "}" *)
)

type source_file = [
    `Rep_opt_attris_choice_module of
      (
          attributes option
        * [
              `Module of module_
            | `Script of script
            | `Addr_blk of address_block
          ]
      )
        list (* zero or more *)
  | `Semg_exp of semgrep_expression
  | `Semg_stmt of semgrep_statement
  | `Semg_part of (
        attributes option
      * module_member_modifier list (* zero or more *)
      * [
            `Func_sign of function_signature
          | `Struct_sign of struct_signature
        ]
    )
]

type module_keyword (* inlined *) = Token.t (* "module" *)

type error_sentinel (* inlined *) = Token.t

type signer (* inlined *) = Token.t (* "signer" *)

type visibility (* inlined *) = (
    Token.t (* "public" *)
  * (
        Token.t (* "(" *)
      * [
            `Script of Token.t (* "script" *)
          | `Friend of Token.t (* "friend" *)
        ]
      * Token.t (* ")" *)
    )
      option
)

type phantom (* inlined *) = Token.t (* "phantom" *)

type ellipsis (* inlined *) = Token.t (* "..." *)

type comments (* inlined *) = [
    `Line_comm_expl of line_comment_explicit
  | `Blk_comm_expl of block_comment_explicit
]

type move_expr (* inlined *) = (Token.t (* "move" *) * identifier (*tok*))

type copy_expr (* inlined *) = (Token.t (* "copy" *) * identifier (*tok*))

type dummy_alias1 (* inlined *) = line_comment

type dummy_alias0 (* inlined *) = block_comment

type typed_number (* inlined *) = (numerical_addr * number_type)

type closure_type (* inlined *) = (
    Token.t (* "|" *)
  * anon_type__rep_COMMA_type__ac59fb8 option
  * Token.t (* "," *) option
  * Token.t (* "|" *)
  * type__ option
)

type tuple_type (* inlined *) = (
    Token.t (* "(" *)
  * anon_type__rep_COMMA_type__ac59fb8 option
  * Token.t (* "," *) option
  * Token.t (* ")" *)
)

type typed_metavariable (* inlined *) = (
    Token.t (* "(" *) * identifier (*tok*) * Token.t (* ":" *) * type__
  * Token.t (* ")" *)
)

type var (* inlined *) = (name_access_chain * type_args option)

type abort_expr (* inlined *) = (Token.t (* "abort" *) * expr)

type access_field (* inlined *) = (
    dot_or_index_chain * Token.t (* "." *) * identifier (*tok*)
)

type call_expr (* inlined *) = (
    name_access_chain
  * type_args option
  * call_args
)

type cast_expr (* inlined *) = (
    Token.t (* "(" *) * expr * Token.t (* "as" *) * type__
  * Token.t (* ")" *)
)

type deref_expr (* inlined *) = (Token.t (* "*" *) * unary_expr)

type if_expr (* inlined *) = (
    Token.t (* "if" *)
  * parenthesized_expr
  * control_body
  * (Token.t (* "else" *) * control_body) option
)

type let_expr (* inlined *) = (
    Token.t (* "let" *)
  * bind_list
  * (Token.t (* ":" *) * type__) option
  * (Token.t (* "=" *) * expr) option
)

type loop_expr (* inlined *) = (Token.t (* "loop" *) * control_body)

type macro_call_expr (* inlined *) = (
    name_access_chain * Token.t (* "!" *) * call_args
)

type mem_access (* inlined *) = (
    dot_or_index_chain * Token.t (* "[" *) * expr * Token.t (* "]" *)
)

type not_expr (* inlined *) = (Token.t (* "!" *) * unary_expr)

type pack_expr (* inlined *) = (
    name_access_chain
  * type_args option
  * Token.t (* "{" *)
  * (expr_field * (Token.t (* "," *) * expr_field) list (* zero or more *))
      option
  * Token.t (* "," *) option
  * Token.t (* "}" *)
)

type receiver_call (* inlined *) = (
    dot_or_index_chain
  * Token.t (* "." *)
  * identifier (*tok*)
  * (Token.t (* "::" *) * type_args) option
  * call_args
)

type ref_expr (* inlined *) = (Token.t (* "&" *) * unary_expr)

type ref_mut_expr (* inlined *) = (Token.t (* "&mut" *) * unary_expr)

type tuple_expr (* inlined *) = (
    Token.t (* "(" *)
  * anon_expr_rep_COMMA_expr_8e432c6 option
  * Token.t (* "," *) option
  * Token.t (* ")" *)
)

type type_hint_expr (* inlined *) = (
    Token.t (* "(" *) * expr * Token.t (* ":" *) * type__ * Token.t (* ")" *)
)

type vector_value_expr (* inlined *) = (
    Token.t (* "vector" *)
  * type_args option
  * Token.t (* "[" *)
  * anon_expr_rep_COMMA_expr_8e432c6 option
  * Token.t (* "," *) option
  * Token.t (* "]" *)
)

type while_expr (* inlined *) = (
    Token.t (* "while" *)
  * parenthesized_expr
  * control_body
  * spec_loop_invariant option
)

type semgrep_partial (* inlined *) = (
    attributes option
  * module_member_modifier list (* zero or more *)
  * [ `Func_sign of function_signature | `Struct_sign of struct_signature ]
)
