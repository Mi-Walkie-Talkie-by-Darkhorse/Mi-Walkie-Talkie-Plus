.class public final enum Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;
.super Ljava/lang/Enum;
.source "BtKeyDevParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BTKEY_PARAM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

.field public static final enum b:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

.field private static final synthetic d:[Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    const-string v1, "NUll"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->a:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    new-instance v0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    const-string v1, "BTKEY_POWER"

    invoke-direct {v0, v1, v3, v3}, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->b:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->a:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->b:Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->d:[Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

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

    iput p3, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->d:[Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/node/btkey/BtKeyDevParam$BTKEY_PARAM_TYPE;->c:I

    return v0
.end method
