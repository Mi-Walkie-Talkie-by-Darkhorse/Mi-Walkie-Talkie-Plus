.class final Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID$1;
.super Ljava/lang/Object;
.source "IMBaseDefine.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID$1;->findValueByNumber(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;
    .locals 1

    invoke-static {p1}, Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;->valueOf(I)Lcom/ifengyu/im/protobuf/IMBaseDefine$LoginCmdID;

    move-result-object v0

    return-object v0
.end method
