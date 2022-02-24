.class public abstract Lcom/xiaomi/push/service/ax$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/service/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/push/service/ax$a;->mId:I

    iput-object p2, p0, Lcom/xiaomi/push/service/ax$a;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/xiaomi/push/service/ax$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaomi/push/service/ax$a;->mId:I

    check-cast p1, Lcom/xiaomi/push/service/ax$a;

    iget p1, p1, Lcom/xiaomi/push/service/ax$a;->mId:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/service/ax$a;->mId:I

    return v0
.end method

.method protected abstract onCallback()V
.end method

.method public final run()V
    .locals 0

    invoke-virtual {p0}, Lcom/xiaomi/push/service/ax$a;->onCallback()V

    return-void
.end method
