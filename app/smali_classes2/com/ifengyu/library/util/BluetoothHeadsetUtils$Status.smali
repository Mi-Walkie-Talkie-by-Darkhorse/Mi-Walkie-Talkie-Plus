.class public final enum Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;
.super Ljava/lang/Enum;
.source "BluetoothHeadsetUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/util/BluetoothHeadsetUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

.field public static final enum b:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

.field public static final enum c:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

.field public static final enum d:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

.field public static final enum e:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

.field private static final synthetic f:[Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    new-instance v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->b:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    new-instance v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->c:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    new-instance v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    const-string v1, "BONDING"

    invoke-direct {v0, v1, v5}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->d:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    new-instance v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    const-string v1, "PARING"

    invoke-direct {v0, v1, v6}, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->e:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    sget-object v1, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->a:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->b:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->c:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->d:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->e:Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->f:[Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;
    .locals 1

    const-class v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;
    .locals 1

    sget-object v0, Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->f:[Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    invoke-virtual {v0}, [Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/library/util/BluetoothHeadsetUtils$Status;

    return-object v0
.end method
