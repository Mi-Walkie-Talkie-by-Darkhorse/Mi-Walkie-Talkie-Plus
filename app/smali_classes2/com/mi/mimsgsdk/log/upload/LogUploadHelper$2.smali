.class final Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$2;
.super Ljava/lang/Object;
.source "LogUploadHelper.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->uploadLog(JLrx/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/a$a",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$threshold:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$2;->val$threshold:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$2;->call(Lrx/e;)V

    return-void
.end method

.method public call(Lrx/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$2;->val$threshold:J

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->access$200(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/e;->onNext(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lrx/e;->onCompleted()V

    return-void
.end method
