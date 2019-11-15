.class public abstract Lio/reactivex/subjects/b;
.super Lio/reactivex/k;
.source "Subject.java"

# interfaces
.implements Lio/reactivex/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k",
        "<TT;>;",
        "Lio/reactivex/q",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Lio/reactivex/subjects/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/b",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lio/reactivex/annotations/NonNull;
    .end annotation

    instance-of v0, p0, Lio/reactivex/subjects/a;

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lio/reactivex/subjects/a;

    invoke-direct {v0, p0}, Lio/reactivex/subjects/a;-><init>(Lio/reactivex/subjects/b;)V

    move-object p0, v0

    goto :goto_0
.end method
