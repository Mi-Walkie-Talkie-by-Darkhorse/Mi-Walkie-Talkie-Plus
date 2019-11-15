.class final Lio/reactivex/internal/operators/observable/ca$c$a;
.super Ljava/lang/Object;
.source "ObservableWindowTimed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ca$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/internal/operators/observable/ca$c;

.field private final b:Lio/reactivex/subjects/UnicastSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ca$c;Lio/reactivex/subjects/UnicastSubject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/UnicastSubject",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ca$c$a;->a:Lio/reactivex/internal/operators/observable/ca$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ca$c$a;->b:Lio/reactivex/subjects/UnicastSubject;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ca$c$a;->a:Lio/reactivex/internal/operators/observable/ca$c;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ca$c$a;->b:Lio/reactivex/subjects/UnicastSubject;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/ca$c;->a(Lio/reactivex/subjects/UnicastSubject;)V

    return-void
.end method
