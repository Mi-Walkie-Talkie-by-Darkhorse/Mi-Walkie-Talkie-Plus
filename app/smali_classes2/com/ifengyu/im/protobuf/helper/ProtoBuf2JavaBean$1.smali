.class synthetic Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;
.super Ljava/lang/Object;
.source "ProtoBuf2JavaBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$DepartmentStatusType:[I

.field static final synthetic $SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$GroupModifyType:[I

.field static final synthetic $SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$GroupType:[I

.field static final synthetic $SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$MsgType:[I

.field static final synthetic $SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$SessionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;->values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$DepartmentStatusType:[I

    :try_start_0
    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$DepartmentStatusType:[I

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;->DEPT_STATUS_OK:Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$DepartmentStatusType:[I

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;->DEPT_STATUS_DELETE:Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$DepartmentStatusType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_1
    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$GroupModifyType:[I

    :try_start_2
    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$GroupModifyType:[I

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->GROUP_MODIFY_TYPE_ADD:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_2
    :try_start_3
    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$GroupModifyType:[I

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->GROUP_MODIFY_TYPE_DEL:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupModifyType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_3
    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;->values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$GroupType:[I

    :try_start_4
    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$GroupType:[I

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;->GROUP_TYPE_NORMAL:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_4
    :try_start_5
    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$GroupType:[I

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;->GROUP_TYPE_TMP:Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$GroupType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_5
    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$SessionType:[I

    :try_start_6
    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$SessionType:[I

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->SESSION_TYPE_SINGLE:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_6
    :try_start_7
    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$SessionType:[I

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->SESSION_TYPE_GROUP:Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$SessionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_7
    invoke-static {}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$MsgType:[I

    :try_start_8
    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$MsgType:[I

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_GROUP_TEXT:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_8
    :try_start_9
    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$MsgType:[I

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_GROUP_AUDIO:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_9
    :try_start_a
    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$MsgType:[I

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_SINGLE_AUDIO:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_a
    :try_start_b
    sget-object v0, Lcom/ifengyu/im/protobuf/helper/ProtoBuf2JavaBean$1;->$SwitchMap$com$ifengyu$im$protobuf$IMBaseDefine$MsgType:[I

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->MSG_TYPE_SINGLE_TEXT:Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;

    invoke-virtual {v1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$MsgType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_b
    return-void

    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_2

    :catch_a
    move-exception v0

    goto/16 :goto_1

    :catch_b
    move-exception v0

    goto/16 :goto_0
.end method
