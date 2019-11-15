.class synthetic Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;
.super Ljava/lang/Object;
.source "SealChannelBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->values()[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->d:[I

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->d:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_INSERT:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_f

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->d:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_DELETE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_e

    :goto_1
    :try_start_2
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->d:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_MODIFY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_d

    :goto_2
    :try_start_3
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->d:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->SEAL_CH_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CHOPTION;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_c

    :goto_3
    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->values()[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->c:[I

    :try_start_4
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->c:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->SEAL_ST_QUERY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_b

    :goto_4
    :try_start_5
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->c:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->SEAL_ST_UPDATE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_STOPTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_a

    :goto_5
    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->values()[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->b:[I

    :try_start_6
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->b:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_9

    :goto_6
    :try_start_7
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->b:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_ERROR:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_8

    :goto_7
    :try_start_8
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->b:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_EMPTY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_7

    :goto_8
    :try_start_9
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->b:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_FORBIDE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_6

    :goto_9
    :try_start_a
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->b:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_QUERY_CONTINUE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_5

    :goto_a
    :try_start_b
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->b:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->SEAL_CH_QUERY_FINISH:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelInfoOperate$SEAL_CH_UERR;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    invoke-static {}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->values()[Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->a:[I

    :try_start_c
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->a:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->SEAL_ST_OK:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_3

    :goto_c
    :try_start_d
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->a:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->SEAL_ST_ERROR:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_2

    :goto_d
    :try_start_e
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->a:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->SEAL_ST_EMPTY:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_1

    :goto_e
    :try_start_f
    sget-object v0, Lcom/ifengyu/intercom/ui/setting/seal/fragment/SealChannelBaseFragment$6;->a:[I

    sget-object v1, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->SEAL_ST_FORBIDE:Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/protos/SealProtos$SEAL_ChannelStateOperate$SEAL_ST_UERR;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_0

    :goto_f
    return-void

    :catch_0
    move-exception v0

    goto :goto_f

    :catch_1
    move-exception v0

    goto :goto_e

    :catch_2
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_b

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_7

    :catch_9
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    goto/16 :goto_5

    :catch_b
    move-exception v0

    goto/16 :goto_4

    :catch_c
    move-exception v0

    goto/16 :goto_3

    :catch_d
    move-exception v0

    goto/16 :goto_2

    :catch_e
    move-exception v0

    goto/16 :goto_1

    :catch_f
    move-exception v0

    goto/16 :goto_0
.end method
