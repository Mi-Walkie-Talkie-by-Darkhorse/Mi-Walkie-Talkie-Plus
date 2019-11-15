.class public final enum Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;
.super Ljava/lang/Enum;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwitchServiceCmdID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;

.field public static final enum CID_SWITCH_P2P_CMD:Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;

.field public static final CID_SWITCH_P2P_CMD_VALUE:I = 0x601

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;

    const-string v1, "CID_SWITCH_P2P_CMD"

    const/16 v2, 0x601

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;->CID_SWITCH_P2P_CMD:Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;

    sget-object v1, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;->CID_SWITCH_P2P_CMD:Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;

    new-instance v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID$1;

    invoke-direct {v0}, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID$1;-><init>()V

    sput-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;->CID_SWITCH_P2P_CMD:Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x601
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;
    .locals 1

    const-class v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;
    .locals 1

    sget-object v0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;->$VALUES:[Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;

    invoke-virtual {v0}, [Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/protobuf/IMBaseDefine$SwitchServiceCmdID;->value:I

    return v0
.end method
