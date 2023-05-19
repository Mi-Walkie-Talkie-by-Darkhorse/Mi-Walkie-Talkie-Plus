.class public final synthetic Lbutterknife/internal/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lbutterknife/internal/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbutterknife/internal/a;

    invoke-direct {v0}, Lbutterknife/internal/a;-><init>()V

    sput-object v0, Lbutterknife/internal/a;->a:Lbutterknife/internal/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lbutterknife/internal/DebouncingOnClickListener;->a()V

    return-void
.end method
