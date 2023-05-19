.class public final synthetic Landroidx/room/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements La/a/a/c/a;


# static fields
.field public static final synthetic a:Landroidx/room/v;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/room/v;

    invoke-direct {v0}, Landroidx/room/v;-><init>()V

    sput-object v0, Landroidx/room/v;->a:Landroidx/room/v;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, La/g/a/f;

    invoke-interface {p1}, La/g/a/f;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
