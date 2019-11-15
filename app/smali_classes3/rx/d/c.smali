.class Lrx/d/c;
.super Lrx/d/b;
.source "RxJavaObservableExecutionHookDefault.java"


# static fields
.field private static a:Lrx/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lrx/d/c;

    invoke-direct {v0}, Lrx/d/c;-><init>()V

    sput-object v0, Lrx/d/c;->a:Lrx/d/c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lrx/d/b;-><init>()V

    return-void
.end method

.method public static a()Lrx/d/b;
    .locals 1

    sget-object v0, Lrx/d/c;->a:Lrx/d/c;

    return-object v0
.end method
