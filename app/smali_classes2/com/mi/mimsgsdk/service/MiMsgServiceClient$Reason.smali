.class final enum Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;
.super Ljava/lang/Enum;
.source "MiMsgServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/service/MiMsgServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

.field public static final enum ClientError:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

.field public static final enum Disconnect:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

.field public static final enum RemoteDead:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

.field public static final enum Restart:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

.field public static final enum SystemFatal:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

.field public static final enum UserCall:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;


# instance fields
.field private reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    const-string v1, "UserCall"

    const-string v2, "\u7528\u6237\u8c03\u7528"

    invoke-direct {v0, v1, v4, v2}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->UserCall:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    new-instance v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    const-string v1, "Restart"

    const-string v2, "\u65ad\u5f00\u540e\u91cd\u8fde"

    invoke-direct {v0, v1, v5, v2}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->Restart:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    new-instance v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    const-string v1, "Disconnect"

    const-string v2, "\u670d\u52a1\u4e3b\u52a8\u65ad\u5f00"

    invoke-direct {v0, v1, v6, v2}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->Disconnect:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    new-instance v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    const-string v1, "ClientError"

    const-string v2, "\u53d1\u751f\u9519\u8bef\u65ad\u5f00"

    invoke-direct {v0, v1, v7, v2}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->ClientError:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    new-instance v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    const-string v1, "RemoteDead"

    const-string v2, "\u670d\u52a1\u6302\u4e86"

    invoke-direct {v0, v1, v8, v2}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->RemoteDead:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    new-instance v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    const-string v1, "SystemFatal"

    const/4 v2, 0x5

    const-string v3, "\u670d\u52a1\u542f\u52a8\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->SystemFatal:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    sget-object v1, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->UserCall:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->Restart:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->Disconnect:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->ClientError:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->RemoteDead:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->SystemFatal:Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->$VALUES:[Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->reason:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    return-object v0
.end method

.method public static values()[Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->$VALUES:[Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    invoke-virtual {v0}, [Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/service/MiMsgServiceClient$Reason;->reason:Ljava/lang/String;

    return-object v0
.end method
