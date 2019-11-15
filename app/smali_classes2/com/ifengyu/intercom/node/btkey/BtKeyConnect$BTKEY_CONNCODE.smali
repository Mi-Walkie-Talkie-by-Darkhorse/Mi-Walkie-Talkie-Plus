.class public final enum Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;
.super Ljava/lang/Enum;
.source "BtKeyConnect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/node/btkey/BtKeyConnect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BTKEY_CONNCODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

.field public static final enum b:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

.field public static final enum c:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

.field public static final enum d:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

.field public static final enum e:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

.field private static final synthetic g:[Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    const-string v1, "NULL"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->a:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    const-string v1, "BTKEY_DISCONNECT"

    invoke-direct {v0, v1, v4, v3}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->b:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    const-string v1, "BTKEY_CONNECT"

    invoke-direct {v0, v1, v5, v4}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->c:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    const-string v1, "BTKEY_ALLOW"

    invoke-direct {v0, v1, v6, v5}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->d:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    const-string v1, "BTKEY_LOWPOWER"

    invoke-direct {v0, v1, v7, v6}, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->e:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->a:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->b:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->c:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->d:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->e:Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->g:[Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->g:[Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyConnect$BTKEY_CONNCODE;->f:I

    return v0
.end method
