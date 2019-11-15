.class public final Lde/hdodenhof/circleimageview/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/hdodenhof/circleimageview/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CircleImageView:[I

.field public static final CircleImageView_civ_border_color:I = 0x1

.field public static final CircleImageView_civ_border_overlay:I = 0x2

.field public static final CircleImageView_civ_border_width:I = 0x0

.field public static final CircleImageView_civ_circle_background_color:I = 0x4

.field public static final CircleImageView_civ_fill_color:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lde/hdodenhof/circleimageview/R$styleable;->CircleImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0100fb
        0x7f0100fc
        0x7f0100fd
        0x7f0100fe
        0x7f0100ff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
