.class public final enum Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;
.super Ljava/lang/Enum;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/update/dolphin/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CHECK_CONDITION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

.field public static final enum b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

.field private static final synthetic c:[Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    const-string v1, "APK"

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    new-instance v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    const-string v1, "MCU"

    invoke-direct {v0, v1, v3}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->b:Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->c:[Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

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

.method public static valueOf(Ljava/lang/String;)Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;
    .locals 1

    const-class v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    return-object v0
.end method

.method public static values()[Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->c:[Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    invoke-virtual {v0}, [Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ifengyu/intercom/update/dolphin/UpdateManager$CHECK_CONDITION;

    return-object v0
.end method
