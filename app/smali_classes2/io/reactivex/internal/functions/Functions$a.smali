.class final Lio/reactivex/internal/functions/Functions$a;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lio/reactivex/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/functions/Functions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/b/f",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/b/a;


# direct methods
.method constructor <init>(Lio/reactivex/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/functions/Functions$a;->a:Lio/reactivex/b/a;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/functions/Functions$a;->a:Lio/reactivex/b/a;

    invoke-interface {v0}, Lio/reactivex/b/a;->a()V

    return-void
.end method
