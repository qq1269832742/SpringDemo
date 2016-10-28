package cn.edu.nuc.ssm.entity;

public class Msg {
	/**
	 * 消息
	 */
	private String msg;
	/**
	 * 消息
	 */
	private Double total;
	/**
	 * 状态吗
	 * @return
	 */
	private int code;
	
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	
}
