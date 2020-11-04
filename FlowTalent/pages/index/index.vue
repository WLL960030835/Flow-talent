<template>
	<view>
		<!-- 首页搜索框开始 -->
		<view class="status_bar"></view>
		<view>1234</view>
	
		<!-- 首页搜索框结束 -->
		<!-- 首页轮播图开始 -->
		<view>
			<swiper class="carousel" :indicator-dots="true" :autoplay="true" :interval="3000" :duration="1000" indicator-color="#fff" indicator-active-color="#0aa1ed" >
				<swiper-item v-for="(item,index) of swiper" :key="index">
					<image class="sw-img"  :src="`../../static/images/index-carousel/${item.index_img}`"></image>		
				</swiper-item>
			</swiper>
		</view>
		<!-- 首页轮播图结束 -->
	</view>
</template>

<script>
	export default {
		data() {
			return {
				// 存储服务器返回的照片信息
				swiper:[]
			}
		},
		onLoad() {
			this.getCarousel();
		},
		methods: {
		getCarousel(){
			uni.request({
				url:"/api/lunbo",
				method:"GET",
				success:res=>{
					console.log(res);
					// 接收服务器返回的数据并赋值属性
					this.swiper=res.data.results;	
				}
			})
		}
		}
	}
</script>

<style>
	@import url("./index.css");
	.status_bar{
		height:var(--status-bar-height);
		width:100%;
	}
</style>
