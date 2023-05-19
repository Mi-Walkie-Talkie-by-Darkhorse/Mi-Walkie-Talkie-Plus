.class public final enum Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;
.super Ljava/lang/Enum;
.source "Quota.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/infra/galaxy/fds/bean/Quota;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuotaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

.field public static final enum QPS:Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

.field public static final enum Throughput:Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    const-string v1, "QPS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;->QPS:Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    .line 2
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    const-string v3, "Throughput"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;->Throughput:Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/bean/Quota$QuotaType;

    return-object v0
.end method
